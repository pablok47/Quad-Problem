class Quadrilateral

  attr_accessor :perimeter

  def initialize(side1, side2, side3, side4)
    @sides = [side1, side2, side3, side4]
    # @perimeter  = perimeter
  end

  def perimeter
  	 @sides.inject(:+) #before you had @perimeter = formula, apprantely you dont need it.
  end


end

class Rectangle < Quadrilateral

	def initialize(side1, side2)
		@sides = [side1, side1, side2, side2]
		
	end

end

class Square < Rectangle

	def initialize(side1)
    @sides = [side1, side1, side1, side1]
  end

end


class Trapezoid < Quadrilateral

 def initialize(side1, side2, sides3_4)
    @sides = [side1, side2, sides3_4, sides3_4]
  end

end

class Rhombus < Trapezoid

	def initialize(side1)
    @sides = [side1, side1, side1, side1]
  end

end






# test 1

# def test
#   squa = Square.new
#   puts squa.is_a? Rectangle
#   puts squa.is_a? Quadrilateral

#   rect = Rectangle.new
#   puts rect.is_a? Quadrilateral
#   puts not(rect.is_a? Trapezoid)

#   rhom = Rhombus.new
#   puts rhom.is_a? Trapezoid
#   puts rhom.is_a? Quadrilateral

#   trap = Trapezoid.new
#   puts trap.is_a? Quadrilateral

# end

# test 2
# def test
#   quad = Quadrilateral.new(1,1,1,1)
#   rectangle = Rectangle.new(1,1)
#   trapezoid = Trapezoid.new(1,1,1)
#   square = Square.new(1)
#   rhombus = Rhombus.new(1)
# end

# test 3
def test
  quad = Quadrilateral.new(1,2,3,4)
  rectangle = Rectangle.new(1,2)
  square = Square.new(1)
  rhombus = Rhombus.new(1)

  puts quad.perimeter == 10
  puts rectangle.perimeter == 6
  puts square.perimeter == 4
  puts rhombus.perimeter == 4
end

test


# quadrilateral = ["Rectangle", "Square", "rhombus", "Trapezoid"]