require_relative "../lib/fraction"
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