#1. Создать класс Runway cо свойствами length, course (направление,
#также в градусах) и surface_type (например "Asphalt" или "Concrete"),
#position_x, position_y, altitude (высота над уровнем моря). Сделать
#так, чтобы свойства можно было задать при создании объекта и потом
#только читать при помощи геттеров.

class Runway

	attr_writer :length, :course, :surface_type, :position_x, :position_y, :altitude

	def self.create(options={})
		runway              = Runway.new(options)
    runway.length       = options[:length]       || rand(4_000)
    runway.course       = options[:course]       || rand(360)
    runway.surface_type = options[:surface_type] || "Asphalt"
    runway.position_x   = options[:position_x]   || rand(100)
    runway.position_y   = options[:position_y]   || rand(100)
    runway.altitude     = options[:altitude]     || rand(3000)
    runway
	end

	def initialize(st)
		@surface_type = st
		@airplane = airplane
	end
	
#	3. Создать методы Runway#receive_airplane и Runway#depart_airplane.
#Тут нужно понимать, что объект класса Runway может в один момент
#времени иметь только один самолет (понадобится свойство @airplane) и
#метод #receive_airplane не может принимать новый самолет до тех пор,
#пока существующий самолет не удален из этого свойства методом
#depart_airplane.

	def receive_airplane
		
	end

	def depart_airplane
		
	end
	
end