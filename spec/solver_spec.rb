require 'spec_helper'

describe Solver do
  solver = Solver.new
  describe '#factorial' do
    it 'returns 1 when given 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the correct factorial for positive integers' do
      expect(solver.factorial(1)).to eq(1)
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(10)).to eq(3_628_800)
    end

    it 'raises an exception for negative integers' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns the reverse of a string' do
      expect(solver.reverse('abc')).to eq('cba')
    end
  end

  describe '#fizzbuzz' do
    it "returns 'fizz' when N is divisible by 3" do
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it "returns 'buzz' when N is divisible by 5" do
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it "returns 'fizzbuzz' when N is divisible by both 3 and 5" do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns N as a string when N is not divisible by 3 or 5' do
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
