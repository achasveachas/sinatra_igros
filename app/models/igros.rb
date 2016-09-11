class Igros
  attr_accessor :x3, :x5, :x7

  def initialize(three, five, seven)
    @x3 = three
    @x5 = five
    @x7 = seven
  end

  def result
    number = (@x3.to_i * 70) + (@x5.to_i * 21) + (@x7.to_i * 15)
    until number <= 105
      number -= 105
    end
    number
  end
end
