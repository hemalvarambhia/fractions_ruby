class Fraction
 attr_reader :numerator, :denominator
 
 def initialize(numerator, denominator = 1)
   gcd = numerator.gcd(denominator)
   @numerator = numerator/gcd
   @denominator = denominator/gcd
 end

 def plus(another)
   sum_denominator = @denominator * another.denominator
   Fraction.new(
	@numerator*(sum_denominator/@denominator) + 
	another.numerator*(sum_denominator/another.denominator), 
	sum_denominator)
 end

 def int_value
   @numerator
 end
end
