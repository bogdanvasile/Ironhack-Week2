require 'sinatra'
require 'sinatra/reloader'

set :port, 4567
set :bind, "0.0.0.0"


get '/' do
erb :calc
end


post '/save_addition' do
 @result = params[:number].to_i + params[:sec_number].to_i
erb :calc
end

post '/save_subtraction' do
   @result_s = params[:number].to_i - params[:sec_number].to_i
erb :calc
end

post '/save_multiplication' do
   @result_m = params[:number].to_i * params[:sec_number].to_i
erb :calc
end

post '/save_div' do
   @result_m = params[:number].to_i / params[:sec_number].to_i
erb :calc
end