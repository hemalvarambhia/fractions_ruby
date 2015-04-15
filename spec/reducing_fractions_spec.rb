require_relative "../lib/fraction"
describe "Reducing fractions" do
  it "does not reduce a simple fraction any further" do
    expect(Math::Fraction.new(1, 3)).to eq(Math::Fraction.new(1, 3))
  end

  it "reduces 2/4 to 1/2" do
    expect(Math::Fraction.new(2, 4)).to eq(Math::Fraction.new(1, 2))
  end

  it "reduces 4/6 to 2/3" do
    expect(Math::Fraction.new(4, 6)).to eq(Math::Fraction.new(2, 3))
  end
end