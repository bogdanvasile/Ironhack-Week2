require "sinatra"
require "sinatra/reloader"

set :port, 3124
set :bind, '0.0.0.0'

enable :sessions

users_list ||= []

get "/" do
end

get "/sign_up" do
 @users_list = users_list
    erb :users
end


post '/sign_up/users' do
  session[:user_id] = params[:user_id] 
  users_list << session[:user_id]
  @users_list = users_list
  redirect('/sign_up')
end

