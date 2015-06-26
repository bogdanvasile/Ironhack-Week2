require 'Imdb'




movies = Imdb::Top250.new.movies


p movies[0]