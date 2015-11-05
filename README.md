# Quad-Problem

Let’s make all of these classes a bit smarter. Think back to how you set up your Square class in a previous assignment. Use that knowledge to help you create a perimeter method for the Quadrilateral which will return the sum of the side lengths.

Since all of our classes are sharing an @sides variable that contains 4 side lengths, we are able to accomplish this for all our classes with a single perimeter method on Quadirlateral.

Use tests to confirm that all of your classes are working correctly. For example, the following tests should all return true:

```ruby
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
```

We’re going to omit Trapezoids since they follow unique rules. Feel free to implement their own behavior for the perimeter method if you can.
