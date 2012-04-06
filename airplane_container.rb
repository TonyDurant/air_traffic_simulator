module AirplaneContainer

  module Manager

    attr_accessor :aircraft_quantity

    def add_airplane(*planes)
      planes.each do |plane| 
        if plane.class == String && airplanes_count { |a| } > @aircraft_quantity
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

  module Info

    def airplanes_count
      i=0
      @airplanes.each do |plane|
        if yield == plane.aircraft_type
          i+=1
        else
         i+=0
        end 
      end
      i
    end

    def big_airplane_count
      
    end

  end

end