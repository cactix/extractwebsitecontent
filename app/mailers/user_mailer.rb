class UserMailer < ActionMailer::Base
 require 'rest-client'
 def export_file(filename,email)
   @res=RestClient.post ""\
   "" ,
   :from => "ewctest.nyros@gmail.com" ,
   :to => email ,
   :subject => "EWC" ,
   :text => "Welcome to EWC!",
   :attachment => File.open("#{Rails.root}/tmp/basic.xlsx") 
 
   
   # @a = JSON.parse(@res)
   # if @a["message"]=="Queued. Thank you"
   # 	@responce="success"
   # else
   #  @responce="faliure"
   # end

   # return @responce

 end
end


