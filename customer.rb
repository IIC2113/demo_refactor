# A customer of the store
class Customer
  attr_reader :name

  def initialize(name)
    @name = name
    @rentals = []
  end

  def add_rental(arg)
    @rentals << arg
  end

  def statement
    result = "Rental Record for #{@name}\n"

    @rentals.each do |rental|
      result += "\t#{rental.movie.title}\t#{rental.total_amount}\n"
    end

    result += "Amount owed is #{total_amount}\n"
    result += "You earned #{frequent_renter_points} frequent renter points"
    result
  end

  def total_amount
    @rentals.inject(0) { |sum, rental| sum + rental.total_amount }
  end

  def frequent_renter_points
    @rentals.inject(0) { |sum, rental| sum + rental.total_renter_points }
  end
end
