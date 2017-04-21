class Movie
  attr_accessor :title

  ALL = []

  def self.all
    ALL
  end

  def self.find_by_title(title)
    self.all.find {|title| title == title}
  end

  def initialize(title)
    @title = title
    # @ratings = []
    # @viewers = []
    ALL << self
  end

  def ratings
    rating.all.select do |rating|
      rating.movie == self
    end
    # @ratings
  end

  def viewers
    self.ratings.collect do |rating|
      rating.viewer
    end
    # @viewers
  end

# def average_rating
# self.all.collect do |movie|
#     movie.ratings
#   end
# end


end


class Rating
  attr_accessor :score, :viewer, :movie

  ALL = []

  def self.all
    ALL
  end

  def initialize(score, viewer, movie)
    @score = score
    @viewer = viewer
    @movie = movie
    viewer.ratings << self
    movie.ratings << self
    ALL << self
  end


end
