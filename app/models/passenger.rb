class Passenger
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_ride(dis, driv)
    newRide = Ride.new(driv, self, dis)
  end
  def rides
    Ride.all.select { |obj| obj.passenger == self }
  end
  def drivers
    self.rides.map { |obj| obj.driver }.uniq
  end
  def total_distance
    self.rides.map { |obj| obj.distance }.reduce {|sum, n| sum + n}
  end
  def self.premium_members
    Ride.all.select { |obj| obj.passenger.total_distance > 100}.map { |obj| obj.passenger.name }.uniq
  end
end
