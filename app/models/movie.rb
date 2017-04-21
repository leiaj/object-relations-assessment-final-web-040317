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

class Viewer
  attr_accessor :first_name, :last_name

  ALL = []

  def self.all
    ALL
  end

  def self.find_by_name(name)
    self.all.find {|viewer| viewer.first_name == name}
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    ALL << self
  end

  def ratings
    rating.all.select do |viewer|
      rating.viewer == self
    end
  end

  def viewers
    self.viewers.select do |movie|
      movie.viewer
    end
    # @viewers
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def create_rating(score, movie)
    rating = Rating.new(score, self, movie)
    self.ratings << rating
    movie.reviews << rating
  end
end


#i feel like the review confused me and i understood this
