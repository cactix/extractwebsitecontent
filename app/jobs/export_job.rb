class ExportJob < ProgressJob::Base
  include ActionView::Helpers::TextHelper
  def initialize(url,page_type,email,ip_address)
    super progress_max: 100
    @url = url
    @page_type = page_type
    @email = email
    @ip_address = ip_address
  end

  def perform
    update_stage('Please wait while the extraction starts..')
    @user=User.new
    @user.url=@url
    @user.option_selected=@page_type
    @user.email=@email
    @user.IP_address=@ip_address
    @user.save
    session_id=Digest::SHA1.hexdigest(@user.id.to_s)
    @user.update_attribute(:session_id,session_id)
    get_extract_data(@url,@page_type,@user.session_id)
    contentSave(session_id)  
    generate_xls(@result)
   end

  def get_extract_data(url,page_type,session_id)
    begin
      if page_type=='page'
        update_stage('Please wait while getting URL...')
        @hash_master = Array.new
        extract_class(url,page_type)
      else          
         @hash_master = Array.new 
         @valid_urls = get_valid_urls?(url) 
          if @valid_urls.length < 100 
              @valid_urls.each do |f_url|
                begin
                  get_valid_urls?(f_url).each {|i| @valid_urls << i} 
                    if @valid_urls.length>100
                      call_extraction(@valid_urls,page_type)
                      break  
                    end            
                rescue 
                end
              end 
              call_extraction(@valid_urls,page_type) 
            else
              call_extraction(@valid_urls,page_type)  
          end        
      end
    rescue 
      update_stage("No data found in this url")
    end
  end

  def call_extraction(valid_urls,page_type)
    valid_urls[0..100].each do |first_url| 
      begin
        extract_class(first_url.to_s,page_type)
      rescue => e
      end
    end
  end

  def get_valid_urls?(url)
    update_stage('Please wait while getting URLs..')
    @doc = Nokogiri::HTML(open(url)) if url
    @link=@doc.css('//a/@href')
    valid_links=Array.new
    my_url=URI.parse(url).host.gsub("www.","")
    @link.each do |link|
      if (link.value.include? "w." + my_url) || (link.value.include? "/" + my_url)
        url = URI.parse(link) rescue false
        status = url.kind_of?(URI::HTTP) || url.kind_of?(URI::HTTPS)
        valid_urls=status ? url : nil
        valid_links<<valid_urls   
      end   
    end
      return valid_links.compact.uniq
  end 

  def contentSave(session)
    const_name= "ewc_job_dev#{session}"
    system ("rails g model #{const_name} url:text tag:string content:text wordcount:integer")
    system ("rake db:migrate")
    @result=const_name.classify.safe_constantize
    begin
          @hash_master.each do |hash|
              hash.each do |key,value|
                if key == "url"
                   @url = value
                elsif value.reject(&:empty?).length > 0
                        @ewc_job= @result.new
                         @ewc_job.url= @url 
                         @ewc_job.tag= key if key != "url"
                      if key != "url"
                          @ewc_job.content=""
                          value.uniq.reject(&:empty?).each do |wi|
                            @ewc_job.content +=  (wi.delete("\n").to_s + "\n").delete("\t").delete("\r").to_s
                          end
                          @ewc_job.save
                      end
                end
              end
          end
    rescue => e
    end
  end

  def extract_class(url,page_type)  
    update_stage_progress(url.to_s + " is extracting..",step:1)
    if url
      update_progress
      @doc = Nokogiri::HTML(open(url)) if url
      @doc.css('script').remove
      @doc.css('noscript').remove  
      @doc.css('section').remove
      @doc.css('style').remove                 
      @tags_array=[]
          @doc.css('//body').css('*').children.each do |s| 
            @tags_array<<{ "tag" => s.name, "text" => s.text.strip}    
          end
            @hash = Hash.new
            @hash["url"] = url
            @tags_array.each do |h|
              if @hash.key?(h["tag"]) == false
                  @hash[h["tag"]] = Array.new
              end
              if @hash.key?(h["tag"]) == true
                @hash[h["tag"]] << h["text"] 
              end
            end   
      @hash_master << @hash.reject!{ |k| k == "text"}.reject!{|s| s=="div"}
      @hash.reject!{ |k| k == "nav"}
      @hash.reject!{|s| s=="comment"}
      @hash.reject!{|x| x=="ul"} 
      @hash_master.each_with_index do |hash,index|
        hash.delete("footer") if index > 0
        hash.delete("header") if index > 0
      end   
    end
  end


  def generate_xls(result)
    update_stage_progress("exporting file....",step: 5)
    @result=result.all
    package = Axlsx::Package.new
    workbook = package.workbook
    workbook.styles do |s|
      @heading = s.add_style alignment: {vertical: :center,horizontal: :left}, b: true, sz: 16, bg_color: "000066", fg_color: "FF"
      @details = s.add_style alignment: {vertical: :center,horizontal: :left},b: true, sz: 13, bg_color: "dbdbdb" , :border => { :color => 'FF000000', :style => :thin}
      @details_left =s.add_style alignment: {vertical: :center,horizontal: :left,:wrap_text => true}, sz: 10, :font_name => 'Arial',bg_color: "dbdbdb" ,:border => { :color => 'FF000000', :style => :thin}
    end
    workbook.add_worksheet(:name => "EWC Worksheet") do |sheet|
      sheet.add_row ["Extracted Web Content"], style: @heading
      sheet.add_row [""]
      sheet.add_row ["Id","Url","Tag","content",], style: @details
      @result.each do |record|
        content = word_wrap(record.content, :line_width => 150).gsub("\n", "\n").split("\n").length
        sheet.add_row [record.id,record.url,record.tag,record.content],:height => 13*content, style: @details_left
      end
    end
      package.serialize("#{Rails.root}/tmp/basic.xlsx")

       if @user.email.present? || @user.email == ""
        file_name = "basic1"
        sleep 3
        update_stage_progress("sending email....",step: 5)
        UserMailer.export_file(file_name,@user.email).deliver_now   
      else
        send_file("#{Rails.root}/tmp/basic.xlsx", filename: "#{file_name}.xlsx", type: "application/vnd.ms-excel", :stream => :true)
      end
  end

end