class Triangle
  attr_accessor :height, :base, :hypotenuse

  def initialize (height, base, hypotenuse)
    @height = height
    @base = base
    @hypotenuse = hypotenuse
  end
  def kind 
    if @height > 0 && base > 0 && hypotenuse > 0 && @height + @base > @hypotenuse && @base + @hypotenuse > @height && @height + @hypotenuse > @base
      sides = [@height, @base, @hypotenuse]
      check = []
      sides.each do |side|
        check << sides.count(side)
      end 
      type = check.max
      case type 
      when 3 then :equilateral
      when 2 then :isosceles
      when 1 then :scalene
    end
  else 
    raise(TriangleError)
  end
end
class TriangleError < StandardError

  def message
    puts 'Not a triangle'
  end
end
end
