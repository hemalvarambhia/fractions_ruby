module Math
  class Fraction
    attr_reader :numerator, :denominator

    def initialize(numerator, denominator = 1)
     gcd = numerator.gcd(denominator)
     factor = denominator < 0 ? -1 : 1
     @numerator = factor * numerator/gcd
     @denominator = factor * denominator/gcd
    end

    def +(another)
      sum_denominator = denominator * another.denominator
      sum_numerator =
        numerator * (sum_denominator/denominator) +
        another.numerator * (sum_denominator/another.denominator)

      Fraction.new(sum_numerator, sum_denominator)
    end

    def *(another)
      Fraction.new(
        numerator * another.numerator,
        denominator * another.denominator)
    end

    def ==(other)
      return false if numerator != other.numerator
      return false if denominator != other.denominator
      true
    end
  end
end

