# Module with methods that must be implemented by MovieTypes
module MovieType
  def total_amount
    raise NotImplementedError
  end

  def total_frequent_renter_points(_)
    1
  end
end

# Type for common movies (can be considered default)
class RegularMovieType
  extend MovieType

  def self.total_amount(days_rented)
    2 + (days_rented > 2 ? (days_rented - 2) * 1.5 : 0)
  end
end

# Movies that were recently released
class NewReleaseMovieType
  extend MovieType

  def self.total_amount(days_rented)
    days_rented * 3
  end

  def self.total_frequent_renter_points(days_rented)
    base_renter_points = super
    base_renter_points + (days_rented > 1 ? 1 : 0)
  end
end

# Movies for children
class ChildrensMovieType
  extend MovieType

  def self.total_amount(days_rented)
    1.5 + (days_rented > 3 ? (days_rented - 3) * 1.5 : 0)
  end
end
