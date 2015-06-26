require 'sinatra'
require 'sinatra/reloader'

set :port, 4567
set :bind, "0.0.0.0"

visits ||= 0
songs ||= []

get '/' do
  visits += 1
  @visits = visits
  @songs = songs
  erb :songs
end

post '/save_song' do
  songs << params[:name]
  redirect('/')
end


get '/enough' do
  "LEAVE ME ALONE WITH THESE CRAPPY SONGS"
end


__END__

Testing it!

curl --data "name=LedZeppelin&artist=StairwayToHeaven" localhost:4567/songs/new
curl --data "name=Sara&artist=FleetwoodMac" localhost:4567/songs/new
curl --data "name=Help&artist=Beatles" localhost:4567/songs/new
curl --data "name=Falco&artist=RockMeAmadeus" localhost:4567/songs/new
curl --data "name=BeeGees&artist=Tragedy" localhost:4567/songs/new