require 'calculator'

describe Calculator do
  context 'sums 2' do
    it 'positive numbers' do
      calc = Calculator.new
      result = calc.sum(5, 6)
      expect(result).to eql(11)
    end

    it 'negative numbers' do
      calc = Calculator.new
      result = calc.sum(-5, -6)
      expect(result).to eql(-11)
    end
  end

  it 'decrease 2 numbers' do
    calc = Calculator.new
    result = calc.decrease(10, 6)
    expect(result).to eql(4)
  end

  it 'divides 2 numbers' do
    calc = Calculator.new
    result = calc.divide(20, 5)
    expect(result).to eq(4)
  end

  it 'multiplies 2 numbers' do
    calc = Calculator.new
    result = calc.multiply(4, 7)
    expect(result).to eq(28)
  end
end