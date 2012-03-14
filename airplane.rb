class Airplane

  attr_accessor :velocity, :altitude, :heading, :position
  attr_reader   :aircraft_type

  #  3. Сделать так, чтобы все случайные значения для всех методов, которые
  # их возвращают устанавливались при создании объекта в методе initialize
  # класса Airplane. Для этого нужно использовать инстансные переменные @
  # в методе initialize. Затем соответствующие методы должны просто
  # возвращать эти инстансные переменные (то есть нужны геттеры).
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

#    def fuel_quantity
#  	  rand(10)
#    end

    # 2. Добавить в класс Airplane приватные методы, "вес" (от 0 до 600
    # тонн) и "тяга двигателей" (thrust, от 0 до 10 условных единиц). Пусть
    # тоже возвращают случайные значения.

    def weight
      rand(600)
    end

    def thrust
      rand(10)
    end

end