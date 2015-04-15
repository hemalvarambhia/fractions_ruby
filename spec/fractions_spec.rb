require_relative "../lib/fraction"

describe "Adding fractions" do
 context "integers" do
  it "adds 0 to 0 to give 0" do
    expect(Math::Fraction.new(0).plus(Math::Fraction.new(0))).to eq(Math::Fraction.new(0))
  end
 
  it "adds two +ve numbers to give a +ve sum" do
    expect(Math::Fraction.new(1).plus(Math::Fraction.new(1))).to eq(Math::Fraction.new(2))
  end

  it "adds a +ve number to a small -ve to give a +ve sum" do
    expect(Math::Fraction.new(2).plus(Math::Fraction.new(-1))).to eq(Math::Fraction.new(1))
  end 

  it "adds a +ve number to a -ve number of equal magnitude to give 0" do
    expect(Math::Fraction.new(1).plus(Math::Fraction.new(-1))).to eq(Math::Fraction.new(0))
  end

  it "adds a small +ve number to a large -ve number to give a -ve sum" do
    expect(Math::Fraction.new(-2).plus(Math::Fraction.new(1))).to eq(Math::Fraction.new(-1))
  end

  it "adds two -ve numbers to yield another negative number" do
    expect(Math::Fraction.new(-1).plus(Math::Fraction.new(-1))).to eq(Math::Fraction.new(-2))
  end
 end

 context "fractions with the same denominator" do
   it "adds two +ve fractions to yield another +ve fraction" do
     expect(Math::Fraction.new(1, 5).plus(Math::Fraction.new(1, 5))).to eq(Math::Fraction.new(2, 5))
   end

   it "adds a +ve fraction to a small -ve fraction to yield a +ve fraction" do
     expect(Math::Fraction.new(2, 5).plus(Math::Fraction.new(-1, 5))).to eq(Math::Fraction.new(1, 5))
   end

   it "adds a big -ve fraction to a small +ve one to yield a -ve fraction" do
     expect(Math::Fraction.new(-2, 5).plus(Math::Fraction.new(1, 5))).to eq(Math::Fraction.new(-1, 5))
   end

   it "adds a +ve fraction to a -ve fraction of equal magitude to yield 0" do
     expect(Math::Fraction.new(2, 5).plus(Math::Fraction.new(-1, 5))).to eq(Math::Fraction.new(1, 5))
   end

   it "adds two big -ve fractions to yield a -ve fraction" do
     expect(Math::Fraction.new(-2, 5).plus(Math::Fraction.new(-1, 5))).to eq(Math::Fraction.new(-3, 5))
   end

   it "adds 1/2 and 1/2 to yield unity" do
     expect(Math::Fraction.new(1, 2).plus(Math::Fraction.new(1, 2))).to eq(Math::Fraction.new(1))
   end
 end

 context "fractions with the different denominators" do
  it "adds two +ve fractions correctly" do
     expect(Math::Fraction.new(1, 2).plus(Math::Fraction.new(1, 4))).to eq(Math::Fraction.new(3, 4))
  end

  it "adds a +ve fraction to a -ve one correctly" do
     expect(Math::Fraction.new(1, 2).plus(Math::Fraction.new(-1, 4))).to eq(Math::Fraction.new(1, 4))
  end

  it "adds two +ve fractions whose denominators are not multiples of each other" do
     expect(Math::Fraction.new(1, 3).plus(Math::Fraction.new(1, 2))).to eq(Math::Fraction.new(5, 6))
  end
 end

 context "integer and fractions" do
   it "adds an integer and fraction correctly" do
     expect(Math::Fraction.new(1).plus(Math::Fraction.new(1, 4))).to eq(Math::Fraction.new(5, 4))
   end
 end
end

