require 'sinatra'

get '/' do
  "Hello World"
end

get '/cat' do
  @random_name = ['Amigo','Oscar','Viking'].sample
  erb(:index)
end
