class Ride
  attr_accessor :passenger, :driver, :distance
  @@all = []
  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end
  def self.all
    @@all
  end
  def self.average_distance
    arrOfD = @@all.map { |obj| obj.distance }
    arrCount = arrOfD.count
    arrOfD.reduce { |sum, n| sum + n}/arrCount
  end
end
