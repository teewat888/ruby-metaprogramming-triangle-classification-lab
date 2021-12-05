class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    if a == 0 || b == 0 || c == 0
      raise TriangleError
    end
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    end
    if a+b <= c || a+c <= b || b+c <= a
      raise TriangleError
    end

  end

  def kind
    if self.a == self.b && self.a == self.c
      :equilateral
    elsif self.a == self.b || self.b == self.c || self.a == self.c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    
  end
end
