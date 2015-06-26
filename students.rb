require 'rubygems'
require 'active_record'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'oc1.sqlite'
)

set :port, 3000

name = " "

get '/' do
  @students = Student.all
  erb :students
end

post '/sign_up' do
  student = Student.new(params)
  student.save

  redirect ('/')
end


class Student < ActiveRecord::Base
  # we have name, surnames, birthday, website, number_of_dogs
  # and first_programming_experience

  AGE_MINIMUM = 16

  validates_presence_of :name, :surnames
  validates_format_of :website, with: /\Ahttp:/
  validates_numericality_of :number_of_dogs, greater_than: 0
  validate :proper_age
 

  private

  def proper_age 
    unless birthday < AGE_MINIMUM.years.ago
      errors.add(:birthday, 'is too young')
    end
  end
end

