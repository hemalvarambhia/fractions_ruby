module Math
  class Fraction
    attr_reader :numerator, :denominator

    def initialize(numerator, denominator = 1)
     gcd = numerator.gcd(denominator)
     factor = 1
     factor = -1 if denominator < 0
     @numerator = factor * numerator/gcd
     @denominator = factor * denominator/gcd
    end

    def plus(another)
     sum_denominator = @denominator * another.denominator
     Fraction.new(
        @numerator*(sum_denominator/@denominator) +
        another.numerator*(sum_denominator/another.denominator),
        sum_denominator)
    end

    def ==(other)
      return false if @numerator != other.numerator
      return false if @denominator != other.denominator
      true
    end
  end
end

