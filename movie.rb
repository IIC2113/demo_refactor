# A movie that can be rented
class Movie
  attr_reader :title, :movie_type

  def initialize(title, movie_type)
    @title, @movie_type = title, movie_type
  end

end

class MovieType
end

class RegularMovieType < MovieType
  def self.total_amount(days_rented)
    2 + (days_rented > 2 ? (days_rented - 2) * 1.5 : 0)
  end
end

class NewReleaseMovieType < MovieType
  def self.total_amount(days_rented)
    days_rented * 3
  end
end

class ChildrensMovieType < MovieType
  def self.total_amount(days_rented)
    1.5 + (days_rented > 3 ? (days_rented - 3) * 1.5 : 0)
  end
end
