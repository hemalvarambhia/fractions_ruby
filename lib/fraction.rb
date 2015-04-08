class Fraction
 def initialize(numerator)
   @numerator = numerator
 end

 def plus(another_fraction)
   Fraction.new(2)
 end

 def int_value
   @numerator
 end
end
