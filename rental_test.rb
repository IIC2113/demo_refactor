require_relative 'movie'
require_relative 'movie_type'
require_relative 'rental'
require_relative 'customer'
require 'minitest/autorun'

describe 'Movie rentals' do
  def setup
    @customer = Customer.new('Jane')
    regular_movie = Movie.new('1984', RegularMovieType)
    new_release_movie = Movie.new('Platoon', NewReleaseMovieType)
    @customer.add_rental(Rental.new(regular_movie, 2))
    @customer.add_rental(Rental.new(new_release_movie, 3))
  end

  it 'correctly does statement' do
    _(@customer.rental_record).must_equal(
      "Rental Record for Jane\n" \
      "\t1984\t2\n\tPlatoon\t9\nAmount owed is 11\n" \
      'You earned 3 frequent renter points'
    )
  end
end
