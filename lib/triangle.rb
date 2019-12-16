class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    raise TriangleError if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 ||
    @side1 >= (@side2 + @side3) ||
    @side2 >= (@side1 + @side3) ||
    @side3 >= (@side2 + @side1)

    sides = [@side1, @side2, @side3].sort
    #raise TriangleError if sides[2] < (sides[1] + sides[0])

    return :equilateral if @side1 == @side2 && @side2 == @side3
    return :isosceles if @side1 != @side2 && @side2 == @side3 ||
    @side2 != @side3 && @side1 == @side2 ||
    @side1 != @side2 && @side1 == @side3
    return :scalene if @side1 != @side2 && @side1 != @side3
  end

  class TriangleError < StandardError
    def message
      "ERRORONEY"
    end
  end
end
