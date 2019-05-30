require 'sinatra'

get '/' do
  "Hello World"
end

get '/random-cat' do
  @random_name = ['Amigo','Oscar','Viking'].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @random_name = params[:name]
  erb(:index)
end

get '/cat_form' do
  erb(:cat_form)
end
