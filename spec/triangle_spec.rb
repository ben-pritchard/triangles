require("rspec")
require("triangle")
require("pry")

describe(Triangle) do
  describe("#is_triangle?") do
    it("takes 3 inputs from the user specifying side lengths and returns whether it's a triangle or not") do
      test_triangle = Triangle.new(3, 7, 2)
      expect(test_triangle.is_triangle?()).to eq(false)
    end
  end
  describe('#triangle_type') do
    it("takes 3 inputs from user and returns if it is an equilateral triangle") do
      test_triangle = Triangle.new(5,5,5)
      expect(test_triangle.triangle_type()).to eq("equilateral")
    end
  end
end
