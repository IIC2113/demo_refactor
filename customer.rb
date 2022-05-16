# A customer of the store
class Customer
  attr_reader :name

  def initialize(name)
    @name = name
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental
  end

  def rental_record
    result = "Rental Record for #{@name}\n"

    @rentals.each do |rental|
      result += "\t#{rental.movie.title}\t#{rental.amount}\n"
    end

    result += "Amount owed is #{owed_amount}\n"
    result += "You earned #{frequent_renter_points} frequent renter points"
    result
  end

  def owed_amount
    @rentals.inject(0) { |sum, rental| sum + rental.amount }
  end

  def frequent_renter_points
    @rentals.inject(0) { |sum, rental| sum + rental.frequent_renter_points }
  end
end
