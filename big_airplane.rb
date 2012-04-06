class BigAirplane < Airplane

  def initialize(options={})
    @engines_count = options[:engines_count] || 4
    super
  end

  def enough_fuel?
    super
  end

end