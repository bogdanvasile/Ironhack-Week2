require 'rubygems'
require 'active_record'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

set :port, 5000

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'oc2.sqlite'
)
class Task < ActiveRecord::Base
  # we have name, done and date
end

get '/' do
  @tasks = Task.all
  erb :todo
end

post '/add_task' do
  task = Task.new name: params[:name], done: false, date: DateTime.now
  task.save
  
  redirect ('/')
end

post '/mark_done' do
  task = Task.new
  task.done = params[:done]
  task.done = true

  
  redirect ('/')
end

post '/delete' do
  task = Task.new
  binding.pry
  task.delete = params[:delete]
  task.delete
  binding.pry

  redirect ('/')
end








