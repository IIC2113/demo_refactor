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
    total_amount, frequent_renter_points = 0, 0
    result = "Rental Record for #{@name}\n"

    @rentals.each do |rental|
      rental_amount = rental.total_amount
      rental_total_points = rental.total_renter_points

      total_amount += rental_amount
      frequent_renter_points += rental_total_points
      result += "\t" + rental.movie.title + "\t" + rental_amount.to_s + "\n"
    end

    # add footer lines
    result += "Amount owed is #{total_amount}\n"
    result += "You earned #{frequent_renter_points} frequent renter points"
    result
  end
end
