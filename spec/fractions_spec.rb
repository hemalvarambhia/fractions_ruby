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

describe "Equating fractions" do
 it "is reflexive" do
    fraction = Math::Fraction.new(1, 4)
    expect(fraction).to eq(fraction)
 end
  
 it "is transitive" do
    fraction_1 = Math::Fraction.new(1, 4)
    fraction_2 = Math::Fraction.new(1, 4)
    fraction_3 = Math::Fraction.new(1, 4)

    expect(fraction_1).to eq(fraction_2)
    expect(fraction_2).to eq(fraction_3)
    expect(fraction_1).to eq(fraction_3)
 end 

 it "is symmetric" do
    fraction_1 = Math::Fraction.new(1, 4)
    fraction_2 = Math::Fraction.new(1, 4)
    
    expect(fraction_1).to eq(fraction_2)
    expect(fraction_2).to eq(fraction_1)
 end

 it "marks two fractions with the same numerator and denominator" do
    expect(Math::Fraction.new(1, 2)).to eq(Math::Fraction.new(1, 2))
 end

 it "marks 2/4 as being equal to 1/2" do
     expect(Math::Fraction.new(1, 2)).to eq(Math::Fraction.new(2, 4))
 end

 it "marks two fractions with different numerators as being unequal" do
    expect(Math::Fraction.new(1, 3)).to_not eq(Math::Fraction.new(2, 3))
 end

 it "marks two fractions with different denominators are being unequal" do
    expect(Math::Fraction.new(1, 3)).to_not eq(Math::Fraction.new(1, 2))
 end

 it "marks 1/-3 as being equal to -1/3" do
    expect(Math::Fraction.new(1, -3)).to eq(Math::Fraction.new(-1, 3))
 end

 it "marks -1/-3 as being equal to 1/3" do
    expect(Math::Fraction.new(-1, -3)).to eq(Math::Fraction.new(1, 3))
 end
end

describe "Multiplying fractions" do
   context "multiplying a fraction by 0" do
    it "computes 0" do
      expect(Math::Fraction.new(0).times(Math::Fraction.new(1, 3))).to eq(Math::Fraction.new(0))
    end
   end
  
  context "fraction multiplied by unity" do
    it "yields the original fraction" do
      expect(Math::Fraction.new(1, 2).times(Math::Fraction.new(1))).to eq(Math::Fraction.new(1, 2))
    end
  end
  
  context "unity multiplied by fraction" do
    it "yields the original fraction" do
      expect(Math::Fraction.new(1).times(Math::Fraction.new(1, 2))).to eq(Math::Fraction.new(1, 2))
    end
  end

  context "fraction multiplied by fraction" do
    it "computes the product correctly" do
      expect(Math::Fraction.new(1, 2).times(Math::Fraction.new(1, 2))).to eq(Math::Fraction.new(1, 4))
      expect(Math::Fraction.new(1, 3).times(Math::Fraction.new(1, 4))).to eq(Math::Fraction.new(1, 12))
    end
  end 

  context "fraction multiplied by another fraction where denominator and numerator cancel" do
    it "computes the product correctly" do
      expect(Math::Fraction.new(1, 2).times(Math::Fraction.new(2, 3))).to eq(Math::Fraction.new(1, 3))
    end
  end

  context "fraction multiplied by an integer that cancels denominator" do
    it "computes the product correctly" do
      expect(Math::Fraction.new(1, 2).times(Math::Fraction.new(2))).to eq(Math::Fraction.new(1))
      expect(Math::Fraction.new(4).times(Math::Fraction.new(1, 2))).to eq(Math::Fraction.new(2))
    end
  end 
end
