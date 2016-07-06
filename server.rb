require 'sinatra'
# require 'sinatra/partial'

get '/' do
  File.read('public/home.html')
end

get '/about' do
  File.read('public/about.html')
end

get '/contact' do
  File.read('public/contact.html')
end