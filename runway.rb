#1. Создать класс Runway cо свойствами length, course (направление,
#также в градусах) и surface_type (например "Asphalt" или "Concrete"),
#position_x, position_y, altitude (высота над уровнем моря). Сделать
#так, чтобы свойства можно было задать при создании объекта и потом
#только читать при помощи геттеров.

class Runway

  attr_reader :length, :course, :surface_type, :position_x, :position_y, :altitude
  attr_accessor :airport

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
  
# 3. Создать методы Runway#receive_airplane и Runway#depart_airplane.
#Тут нужно понимать, что объект класса Runway может в один момент
#времени иметь только один самолет (понадобится свойство @airplane) и
#метод #receive_airplane не может принимать новый самолет до тех пор,
#пока существующий самолет не удален из этого свойства методом
#depart_airplane.

  def receive_airplane(plane)
    if @airplane.nil?
      @airplane = plane
      airport.add_airplane(plane)
    else
      puts "Can't add a plane coz runway is occupy"     
    end
  end

  def depart_airplane
    @airplane = nil
  end
  
end