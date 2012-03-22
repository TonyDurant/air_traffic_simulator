require_relative "airplane"
require_relative "radar"
require_relative "runway"
require_relative "airport"

plane_1 = Airplane.new("Boeing 747")
plane_2 = Airplane.new("Boeing 777")
plane_3 = Airplane.new("Anton 777")
plane_4 = Airplane.new("Anton 888")
radar = Radar.new
#p radar.airplanes.size
radar.add(plane_1, plane_2, plane_3, plane_4, plane_4)
#p radar.airplanes.size
#radar.delete_airplane("Anton 888")
#radar.delete_airplane("Anton 777")
#p radar.airplanes.size

p radar.airplanes.size
puts "----"
radar.deleted_landed
puts "----"
p radar.airplanes.size

airplane1 = Airplane.create({ :velocity => 100})
airplane2 = Airplane.create

p airplane1
p airplane2

runway1 = Runway.create({ :length => 100, :course => 120, :surface_type => "Asphalt", :position_x => 1000, :position_y => 900, :altitude => 1499})
runway2 = Runway.create({ :length => 444, :course => 45, :surface_type => "concrete", :position_x => 1000, :position_y => 900, :altitude => 1499})
p runway1
p runway2

airport1 = Airport.create( {:name => "Franklin", :code => 007, :runways => [runway1, runway2]} )
p airport1