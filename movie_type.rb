# Module with methods that must be implemented by MovieTypes
module MovieType
  def self.total_amount
    raise NotImplementedError
  end
end

# Type for common movies (can be considered default)
class RegularMovieType
  include MovieType

  def self.total_amount(days_rented)
    2 + (days_rented > 2 ? (days_rented - 2) * 1.5 : 0)
  end
end

# Movies that were recently released
class NewReleaseMovieType
  include MovieType

  def self.total_amount(days_rented)
    days_rented * 3
  end
end

# Movies for children
class ChildrensMovieType
  include MovieType

  def self.total_amount(days_rented)
    1.5 + (days_rented > 3 ? (days_rented - 3) * 1.5 : 0)
  end
end
