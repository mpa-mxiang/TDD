require_relative './solver'

RSpec.describe Solver do
  subject(:solver) { Solver.new }

  describe "#factorial" do
    it "returns 1 for 0" do
      expect(solver.factorial(0)).to eq(1)
    end

    it "returns the correct factorial for positive integers" do
      expect(solver.factorial(1)).to eq(1)
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(10)).to eq(3_628_800)
    end

    it "raises an exception for negative integers" do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe "#reverse" do
    it "returns the reversed word" do
      expect(solver.reverse("hello")).to eq("olleh")
      expect(solver.reverse("ruby")).to eq("ybur")
    end
  end

  describe "#fizzbuzz" do
    it "returns 'fizz' for multiples of 3" do
      expect(solver.fizzbuzz(3)).to eq("fizz")
      expect(solver.fizzbuzz(9)).to eq("fizz")
    end

    it "returns 'buzz' for multiples of 5" do
      expect(solver.fizzbuzz(5)).to eq("buzz")
      expect(solver.fizzbuzz(25)).to eq("buzz")
    end

    it "returns 'fizzbuzz' for multiples of both 3 and 5" do
      expect(solver.fizzbuzz(15)).to eq("fizzbuzz")
      expect(solver.fizzbuzz(30)).to eq("fizzbuzz")
    end

    it "returns the number as a string for non-multiples" do
      expect(solver.fizzbuzz(2)).to eq("2")
      expect(solver.fizzbuzz(11)).to eq("11")
    end
  end
end
