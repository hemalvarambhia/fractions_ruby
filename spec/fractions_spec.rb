require_relative "../lib/fraction"

describe "Adding fractions" do
 it "adds 0 to 0 to give 0" do
    expect(Fraction.new(0).plus(Fraction.new(0)).int_value).to eq(0)
 end
 
 it "adds two +ve numbers to give a +ve sum" do
    expect(Fraction.new(1).plus(Fraction.new(1)).int_value).to eq(2)
 end

 it "adds a +ve number to a small -ve to give a +ve sum" do
    expect(Fraction.new(2).plus(Fraction.new(-1)).int_value).to eq(1)
 end 

 it "adds a +ve number to a -ve number of equal magnitude to give 0" do
    expect(Fraction.new(1).plus(Fraction.new(-1)).int_value).to eq(0)
 end

 it "adds a small +ve number to a large -ve number to give a -ve sum" do
    expect(Fraction.new(-2).plus(Fraction.new(1)).int_value).to eq(-1)
 end

 it "adds two -ve numbers to yield another negative number" do
    expect(Fraction.new(-1).plus(Fraction.new(-1)).int_value).to eq(-2)
 end

 it "adds two +ve fractions to yield another +ve fraction" do
    expect(Fraction.new(1, 5).plus(Fraction.new(1, 5)).numerator).to eq(2)
    expect(Fraction.new(1, 5).plus(Fraction.new(1, 5)).denominator).to eq(5)
 end

 it "adds a +ve fraction to a small -ve fraction to yield a +ve fraction" do
    expect(Fraction.new(2, 5).plus(Fraction.new(-1, 5)).numerator).to eq(1)
    expect(Fraction.new(2, 5).plus(Fraction.new(-1, 5)).denominator).to eq(5)
 end

 it "adds a big -ve fraction to a small +ve one to yield a -ve fraction" do
    expect(Fraction.new(-2, 5).plus(Fraction.new(1, 5)).numerator).to eq(-1)
    expect(Fraction.new(-2, 5).plus(Fraction.new(1, 5)).denominator).to eq(5)
 end

 it "adds a +ve fraction to a -ve fraction of equal magitude to yield 0" do
    expect(Fraction.new(2, 5).plus(Fraction.new(-1, 5)).numerator).to eq(1)
    expect(Fraction.new(2, 5).plus(Fraction.new(-1, 5)).denominator).to eq(5)
 end

 it "adds a big -ve fraction to a small +ve one to yield a -ve fraction" do
    expect(Fraction.new(-2, 5).plus(Fraction.new(1, 5)).numerator).to eq(-1)
    expect(Fraction.new(-2, 5).plus(Fraction.new(1, 5)).denominator).to eq(5)
 end

 it "adds a +ve fraction to a -ve fraction of equal magitude to yield 0" do
   expect(Fraction.new(1, 5).plus(Fraction.new(-1, 5)).numerator).to eq(0)
   expect(Fraction.new(1, 5).plus(Fraction.new(-1, 5)).denominator).to eq(5)
 end

 it "adds a big -ve fraction to a small +ve one to yield a -ve fraction" do
   expect(Fraction.new(-2, 5).plus(Fraction.new(-1, 5)).numerator).to eq(-3)
   expect(Fraction.new(-2, 5).plus(Fraction.new(-1, 5)).denominator).to eq(5)
 end
end
