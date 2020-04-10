# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if a < 1 || b < 1 || c < 1
    fail TriangleError, "side length less than 1"
  end
  x, y, z = a + b > c, a + c > b, b + c > a

  unless x && y && z
    fail TriangleError, "sides lengths defy Pythagorean Theorem"
  end

  if a == b || b == c || a == c
    if a == b && b == c
      :equilateral
    else
      :isosceles
    end
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
