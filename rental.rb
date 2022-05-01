# A rental event
class Rental
  attr_reader :movie, :days_rented

  def initialize(movie, days_rented)
    @movie = movie
    @days_rented = days_rented
  end

  def total_amount
    @movie.movie_type.total_amount(@days_rented)
  end

  def total_renter_points
    frequent_renter_points = 1
    if @movie.movie_type == NewReleaseMovieType && @days_rented > 1
        frequent_renter_points += 1
    end
    frequent_renter_points
  end
end
