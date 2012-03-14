require_relative "airplane"
require_relative "radar"

plane_1 = Airplane.new("Boeing 747")
plane_2 = Airplane.new("Boeing 777")
plane_3 = Airplane.new("Anton 777")
plane_4 = Airplane.new("Anton 888")
radar = Radar.new
p radar.airplanes.size
radar.add(plane_1, plane_2, plane_3, plane_4, plane_4)
p radar.airplanes.size
radar.delete_airplane("Anton 888")
radar.delete_airplane("Anton 777")
p radar.airplanes.size

#p radar
puts "----"
radar.each_airplane { |at, v, a, pos| puts at, v, a, pos }
radar.deleted_landed
puts "----"
p radar.airplanes.size