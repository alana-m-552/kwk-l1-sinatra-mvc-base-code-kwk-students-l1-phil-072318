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
  
  get '/hello/:name' do 
    @yourname = params [:name]
    "Hello #{@yourname}"
  end 
end

