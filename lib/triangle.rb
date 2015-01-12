class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3

  end
  define_method(:is_triangle?) do
    side = []
    side.push(@side1, @side2, @side3)
    side.sort!()
    if side[0] + side[1] <= side[2]
      false
    else
      true
    end
  end
  define_method(:triangle_type) do
    if is_triangle?()
      if @side1 == @side2 && @side1 == @side3
        "equilateral"
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        "iscosoles"
      else
        "scalene"
      end
    else
      "not a triangle"
    end
  end
end


# if is_triangle?()
#   "It's all good"
# else
#   "This is not a triangle"
# end
