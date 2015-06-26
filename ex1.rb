require 'sinatra'
require 'sinatra/reloader'

set :port, 3003
set :bind, '0.0.0.0'

visits ||= 0

songs = []

get '/' do
redirect "/songs"
end

post '/songs/new' do
song = params[:song]
redirect to "/songs"
end

get '/songs' do
"New York"
end

 
    



