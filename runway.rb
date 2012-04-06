class Runway

  include Positionable
  #include AirplaneContainer
  attr_reader :surface_type

  def self.create(options={})
    Runway.new(options)
  end

  def initialize(options)
    @length       = options[:length] # сделать так все.
    @surface_type = options[:surface_type]
    @position_x   = options[:position_x]
    @position_y   = options[:position_y]
    @altitude     = options[:altitude]
  end

  def receive_airplane(plane)
    if @airplane.nil?
      @airplane = plane
      airport.add_airplane(plane)
    else
      puts "Can't add a plane coz runway is occupy"     
    end
  end

  def depart_airplane
    airport.delete_airplane(@airplane)
    @airplane = nil
  end
  
end