# A rental event
class Rental
  attr_reader :movie, :days_rented

  def initialize(movie, days_rented)
    @movie = movie
    @days_rented = days_rented
  end

  def amount
    @movie.movie_type.total_amount(@days_rented)
  end

  def frequent_renter_points
    @movie.movie_type.total_frequent_renter_points(@days_rented)
  end
end
