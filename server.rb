require 'sinatra'

get '/' do
  File.read('public/my_site.html')
end