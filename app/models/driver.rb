class Driver
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_ride(dis, pas)
    newRide = Ride.new(self, pas, dis)
  end
  def rides
    Ride.all.select { |obj| obj.driver == self }
  end
  def passenger_names
    self.rides.map { |obj| obj.passenger.name }.uniq
  end
  def self.mileage_cap(dis)
    Ride.all.select { |obj| obj.distance > dis}.map { |obj| obj.driver }
  end
end
