#2. Создать модуль Positionable, который будет включать методы и
#свойства общие для Airplane и Runway: position_x, position_y, length,
#course, airport. Для этого в модуле можно использовать attr_accessor,
#attr_reader и attr_writer как обычно ты это делаешь в классе.
module Positionable
  
  attr_reader :length
  attr_accessor :airport, :course, :position_x, :position_y, :altitude, :velocity, :position

end