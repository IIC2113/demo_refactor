require_relative 'movie'
require_relative 'movie_type'
require_relative 'rental'
require_relative 'customer'
require 'minitest/autorun'

describe 'Movie rentals' do
  def setup
    @c = Customer.new('Jane')
    @m1 = Movie.new('1984', RegularMovieType)
    @m2 = Movie.new('Platoon', NewReleaseMovieType)
    @r1 = Rental.new(@m1, 2)
    @r2 = Rental.new(@m2, 3)
    @c.add_rental(@r1)
    @c.add_rental(@r2)
  end

  it 'correctly does statement' do
    _(@c.statement).must_equal(
      "Rental Record for Jane\n" \
      "\t1984\t2\n\tPlatoon\t9\nAmount owed is 11\n" \
      'You earned 3 frequent renter points'
    )
  end
end
