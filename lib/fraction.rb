class Fraction
 attr_reader :numerator, :denominator
 def initialize(numerator, denominator = 1)
   @numerator = numerator
   @denominator = denominator
 end

 def plus(another_fraction)
   Fraction.new(@numerator + another_fraction.numerator, @denominator)
 end

 def int_value
   @numerator
 end
end
