require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
d1 = Driver.new("tomD")
d2 = Driver.new("joeD")
d3 = Driver.new("maddyD")
p1 = Passenger.new("smithP")
p2 = Passenger.new("cindyP")
p3 = Passenger.new("ashP")
r1 = Ride.new(d1, p2, 4.2)
r2 = Ride.new(d1, p1, 200.1)
r3 = Ride.new(d2, p1, 7.5)
r4 = Ride.new(d2, p2, 75.9)
r5 = Ride.new(d2, p1, 5.2)
r6 = Ride.new(d2, p1, 3.4)
r7 = Ride.new(d2, p1, 80.3)
r8 = Ride.new(d2, p3, 2.5)
r9 = Ride.new(d3, p3, 5.6)
binding.pry
