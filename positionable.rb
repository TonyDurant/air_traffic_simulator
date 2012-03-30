#2. Создать модуль Positionable, который будет включать методы и
#свойства общие для Airplane и Runway: position_x, position_y, length,
#course, airport. Для этого в модуле можно использовать attr_accessor,
#attr_reader и attr_writer как обычно ты это делаешь в классе.
module Positionable
  
  attr_reader :length, :course, :surface_type, :position_x, :position_y, :altitude, :velocity, :heading, :position, :weight
  attr_accessor :airport, :aircraft_type

end