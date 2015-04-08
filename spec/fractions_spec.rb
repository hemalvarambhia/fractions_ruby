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

 it "adds a +ve number to a -ve number of equal magnitude to give 0"

 it "adds a small +ve number to a large -ve number to give a -ve sum"

 it "adds two -ve numbers to yield another negative number"
end
