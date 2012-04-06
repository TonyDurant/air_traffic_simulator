class Radar

  attr_reader :airplanes

  include AirplaneContainer::Manager

  def initialize
    @airplanes = Array.new
    @aircraft_quantity = 300
  end

  def each_airplane
    @airplanes.each do |plane| 
      yield(plane.aircraft_type, plane.velocity, plane.altitude, plane.position)
    end
  end

  def deleted_landed
    @airplanes.delete_if { |plane| plane.altitude.to_i == 0 }
  end

end
