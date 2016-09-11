class Igros
  attr_accessor :x3, :x5, :x7

  def initialize(three, five, seven)
    @x3 = three.to_i
    @x5 = five.to_i
    @x7 = seven.to_i
  end

  def result
    number = (@x3 * 70) + (@x5 * 21) + (@x7 * 15)
    until number <= 105
      number -= 105
    end
    number
  end
end
