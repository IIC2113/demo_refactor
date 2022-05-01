# A movie that can be rented
class Movie
  attr_reader :title, :movie_type

  def initialize(title, movie_type)
    @title = title
    @movie_type = movie_type
  end
end
