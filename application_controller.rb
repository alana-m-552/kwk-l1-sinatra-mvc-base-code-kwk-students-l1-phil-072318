require 'bundler'
require './models/model'
Bundler.require

class MyApp < Sinatra::Base
  get  '/' do 
    "Welcome to the Alana Lounge. Just relax and enjoy Alana's presence"
  end 
 
  get '/itslit' do 
   erb:index   
  end
  
  get '/hello/:drink' do #allows the name to be entered into the website
    @yourdrink = params[:drink]
    "Do you want a sip of #{@yourdrink}?"
  end 
  
  get '/drink_form' do 
    erb:drink_form
  end 
  
  post '/drink'do
    "my name is #{params[:name]}, and I love to drink #{params[:value]}"
  end
end

