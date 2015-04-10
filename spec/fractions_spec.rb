require_relative "../lib/fraction"

describe "Adding fractions" do
 context "integers" do
  it "adds 0 to 0 to give 0" do
    expect(Math::Fraction.new(0).plus(Math::Fraction.new(0)).int_value).to eq(0)
  end
 
  it "adds two +ve numbers to give a +ve sum" do
    expect(Math::Fraction.new(1).plus(Math::Fraction.new(1)).int_value).to eq(2)
  end

  it "adds a +ve number to a small -ve to give a +ve sum" do
    expect(Math::Fraction.new(2).plus(Math::Fraction.new(-1)).int_value).to eq(1)
  end 

  it "adds a +ve number to a -ve number of equal magnitude to give 0" do
    expect(Math::Fraction.new(1).plus(Math::Fraction.new(-1)).int_value).to eq(0)
  end

  it "adds a small +ve number to a large -ve number to give a -ve sum" do
    expect(Math::Fraction.new(-2).plus(Math::Fraction.new(1)).int_value).to eq(-1)
  end

  it "adds two -ve numbers to yield another negative number" do
    expect(Math::Fraction.new(-1).plus(Math::Fraction.new(-1)).int_value).to eq(-2)
  end
 end

 context "fractions with the same denominator" do
   it "adds two +ve fractions to yield another +ve fraction" do
     expect(Math::Fraction.new(1, 5).plus(Math::Fraction.new(1, 5)).numerator).to eq(2)
     expect(Math::Fraction.new(1, 5).plus(Math::Fraction.new(1, 5)).denominator).to eq(5)
   end

   it "adds a +ve fraction to a small -ve fraction to yield a +ve fraction" do
     expect(Math::Fraction.new(2, 5).plus(Math::Fraction.new(-1, 5)).numerator).to eq(1)
     expect(Math::Fraction.new(2, 5).plus(Math::Fraction.new(-1, 5)).denominator).to eq(5)
   end

   it "adds a big -ve fraction to a small +ve one to yield a -ve fraction" do
     expect(Math::Fraction.new(-2, 5).plus(Math::Fraction.new(1, 5)).numerator).to eq(-1)
     expect(Math::Fraction.new(-2, 5).plus(Math::Fraction.new(1, 5)).denominator).to eq(5)
   end

   it "adds a +ve fraction to a -ve fraction of equal magitude to yield 0" do
      expect(Math::Fraction.new(2, 5).plus(Math::Fraction.new(-1, 5)).numerator).to eq(1)
      expect(Math::Fraction.new(2, 5).plus(Math::Fraction.new(-1, 5)).denominator).to eq(5)
   end

   it "adds two big -ve fractions to yield a -ve fraction" do
     expect(Math::Fraction.new(-2, 5).plus(Math::Fraction.new(-1, 5)).numerator).to eq(-3)
     expect(Math::Fraction.new(-2, 5).plus(Math::Fraction.new(-1, 5)).denominator).to eq(5)
   end
 end

 context "fractions with the different denominators" do
  it "adds two +ve fractions correctly" do
     expect(Math::Fraction.new(1, 2).plus(Math::Fraction.new(1, 4)).numerator).to eq(3)
     expect(Math::Fraction.new(1, 2).plus(Math::Fraction.new(1, 4)).denominator).to eq(4)
  end

  it "adds a +ve fraction to a -ve one correctly" do
     expect(Math::Fraction.new(1, 2).plus(Math::Fraction.new(-1, 4)).numerator).to eq(1)
     expect(Math::Fraction.new(1, 2).plus(Math::Fraction.new(-1, 4)).denominator).to eq(4)
  end

  it "adds two +ve fractions whose denominators are not multiples of each other" do
     expect(Math::Fraction.new(1, 3).plus(Math::Fraction.new(1, 2)).numerator).to eq(5)
     expect(Math::Fraction.new(1, 3).plus(Math::Fraction.new(1, 2)).denominator).to eq(6)
  end
 end
end

describe "Reducing fractions" do
 it "does not reduce a simple fraction any further" do
    expect(Math::Fraction.new(1, 3).numerator).to eq(1)
    expect(Math::Fraction.new(1, 3).denominator).to eq(3)
 end

 it "reduces 2/4 to 1/2" do
    expect(Math::Fraction.new(2, 4).numerator).to eq(1)
    expect(Math::Fraction.new(2, 4).denominator).to eq(2)
 end

 it "reduces 4/6 to 2/3" do
    expect(Math::Fraction.new(4, 6).numerator).to eq(2)
    expect(Math::Fraction.new(4, 6).denominator).to eq(3)
 end
end

describe "Equating fractions" do
 it "marks two fractions with the same numerator and denominator" do
    expect(Math::Fraction.new(1, 2).eql?(Math::Fraction.new(1, 2))).to eq(true)
 end

 it "marks 2/4 as being equal to 1/2" do
     expect(Math::Fraction.new(1, 2).eql?(Math::Fraction.new(2, 4))).to eq(true)
 end

 it "marks two fractions with different numerators as being unequal" do
    expect(Math::Fraction.new(1, 3).eql?(Math::Fraction.new(2, 3))).to eq(false)
 end

 it "marks two fractions with different denominators are being unequal" do
    expect(Math::Fraction.new(1, 3).eql?(Math::Fraction.new(1, 2))).to eq(false)
 end
end