require 'net/http'
require 'uri'

class SearchController < ApplicationController
  protect_from_forgery :only => [:create, :update, :destroy]

  def index
  end
  
  def postcode
    json = Net::HTTP.get(URI.parse("http://ukonline.talusdesign.co.uk/api/nearest/#{URI.escape(params[:postcode])}/"))
    data = JSON.parse(json)
    message = "Nearest UK Online centre: #{data[0]["name"]} (#{data[0]["phone"]}) #{data[0]["street"]}, #{data[0]["addr2"]}, #{data[0]["town"]}, #{data[0]["pc"]}"
    
    @sms = SMS.new
    @sms.create(params[:number].gsub(/^0/, '44'), message)    
    
    flash[:success] = "SMS Message sent!"
    redirect_to root_path
  end
end
