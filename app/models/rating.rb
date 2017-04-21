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
