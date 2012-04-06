class Airplane

  include Positionable
  #attr_reader :weight
  attr_accessor :aircraft_type, :weight

  def self.create(options={})
    airplane          = self.new(options[:aircraft_type])
    airplane.weight   = options[:weight]   || rand(600)
    airplane.velocity = options[:velocity] || rand(900)
    airplane.altitude = options[:altitude] || rand(10000)
    #airplane.heading  = options[:heading]  || rand(360)
    airplane.position = options[:position] || [rand(90), rand(180)]
    airplane
  end

  def initialize(ac)
    @aircraft_type = ac
    @velocity      = rand(900)
    @altitude      = 0
    @heading       = rand(360)
    @position      = [rand(90), rand(180)]
    @fuel_quantity = rand(10)
  end

  def enough_fuel?
    @fuel_quantity > 1
  end

  private

    def weight
      rand(600)
    end

    def thrust
      rand(10)
    end

end