class UsersController < ApplicationController
  include ActionView::Helpers::TextHelper
	require 'open-uri'
	require 'nokogiri'
	require 'open_uri_redirections'
	
  def content
  end

  def show_page
    url = params[:url]
    page_type = params[:page_type]
    email = params[:email]
    ip_address = request.remote_ip
    @job = Delayed::Job.enqueue ExportJob.new(url,page_type,email,ip_address)
  end

  def job_available
    @job_a=Delayed::Job.where(:id => params[:id]).length
    render json: @job_a
  end 

end




