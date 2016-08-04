require 'sinatra'

get '/' do
  File.read('public/home.html.erb')
end

get '/about' do
  File.read('public/about.html')
end

get '/contact' do
  File.read('public/contact.html')
end