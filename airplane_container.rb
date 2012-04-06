module AirplaneContainer

  module Manager

    attr_accessor :aircraft_quantity

    def add_airplane(*planes)
      planes.each do |plane| 
        if plane.class == String #&& airplanes_count { |a| } > @aircraft_quantity
          @airplanes.push(Airplane.new(plane))
        else
          @airplanes.push(plane)    
        end 
      end
      @airplanes.uniq!
      @airplanes
    end

    def delete_airplane(*planes)
      @airplanes.delete_if { |plane| planes.include?(plane) }
    end

  end

  module Info

    def airplanes_count
      i = 0
      @airplanes.each { |plane| i += 1 if yield(plane) }
      i
    end

    def big_airplanes_count
      airplanes_count do |a|
        optional_condition = if block_given? && !yield(a)
#         optional_condition = false
          false
        else
#         optional_condition = true
          true
        end
        p a.class
        p optional_condition
        a.class == BigAirplane && optional_condition
      end
    end

  end

end