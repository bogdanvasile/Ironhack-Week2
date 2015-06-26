# SL9. I’m damn right about TV series!

# I love TV series. I hope you do too. One of the main topics about TV series is The Absolute Truth Answers, which everyone thinks
# he has but no one truly does.

# Is Lost Finale as shitty as everyone says? Is The Wire the best TV series ever, or is it Breaking Bad? WHY WAS FIREFLY CANCELLED?
# Is it true that whoever wrote Heroes season 3 was the Devil himself? Why is Community so underrated, being in fact the best comedy ever?

# Write a class, let’s say SeriesMasterOfTheUniverse, with several methods answering questions about the series universe. Try to add
# parameters to most questions: there is no point in testing constants! Then add the testing for it using RSpec. Write several tests
# for each question, exploring different scenarios.

# An example of a method is one that, when passing a list of some TV series, returns the best one. For instance, when prefering The Wire
# when comparing it to Friends, it should pass the last. Otherwise, if it returns Mom as the best comedy aired on 2013, it should fail
# (I mean, Veep or Community were definitely better).

# Upgrade: use IMDB Ruby gem to remove arbitrarity!

class MoviesMasterOfTheUniverse

  def select_best(movies)
    movies[rand(movies.length)]
  end

  def select_worst(movies)
    movies[rand(movies.length)]
  end

  def longest_title(movies)
    title_length = 0
    largest_title = ""
    movies.each_with_index do |movie, i|
      if movie.length > title_length
        largest_title = movies[i]
      end
    end

    largest_title
  end

  def comedy?(movie)
    movie.include?('happy') || movie.include?('fun') || movie.include?('humour')
  end

end


### RSPEC TESTTING ###
describe MoviesMasterOfTheUniverse do
  before do
    @moviesmaster = MoviesMasterOfTheUniverse.new
  end

  describe "#select_best" do
    it "should have a random string" do
      expect(@moviesmaster.select_best(%w{ dumbo tarzan ghost })).to eq('dumbo') 
    end
  end

  describe "#select_worst" do
    it "should have a random string" do
      expect(@moviesmaster.select_best(%w{ dumbo tarzan ghost })).to eq('dumbo') 
    end
  end

  describe "#longest_title" do
    it "should have the longest_title" do
      expect(@moviesmaster.longest_title(%w{ dumbo tarzan ghost the\ three\ musqueteers })).to eq('the three musqueteers')
    end
  end

  describe "#comedy?" do
    context "when we test specific values" do
      it "should return true" do
        expect(@moviesmaster.comedy?('super happy')).to eq(true)
      end

      it "should return false" do
        expect(@moviesmaster.comedy?('super sad')).to eq(false)
      end
    end
  end
end

