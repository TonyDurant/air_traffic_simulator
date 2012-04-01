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

  def delete_airplane(*ac)
    @airplanes.delete_if { |plane| ac.include?(plane) }
  end

end