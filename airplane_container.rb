module AirplaneContainer

  def add_airplane(*planes)
    planes.each do |plane| 
      if plane.class == String 
        @airplanes.push(Airplane.new(plane))
      else
        @airplanes.push(plane)    
      end 
    end 
    @airplanes.uniq!
  end

  def delete_airplane(ac)
    @airplanes.each { |plane| @airplanes.delete(plane) if ac == plane.aircraft_type }
  end

end