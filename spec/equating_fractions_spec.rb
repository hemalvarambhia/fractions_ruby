require_relative "../lib/fraction"
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