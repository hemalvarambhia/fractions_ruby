class Fraction
 attr_reader :numerator
 def initialize(numerator)
   @numerator = numerator
 end

 def plus(another_fraction)
   Fraction.new(@numerator + another_fraction.numerator)
 end

 def int_value
   @numerator
 end
end
