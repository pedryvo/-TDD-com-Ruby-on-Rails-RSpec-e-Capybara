require 'calculator'

describe Calculator do
  context '.sum' do
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

  context '.decrease' do
    it '2 numbers' do
      calc = Calculator.new
      result = calc.decrease(10, 6)
      expect(result).to eql(4)
    end
  end

  context '.divide' do
    it '2 numbers' do
      calc = Calculator.new
      result = calc.divide(20, 5)
      expect(result).to eq(4)
    end
  end

  context '.multiply' do
    it '2 numbers' do
      calc = Calculator.new
      result = calc.multiply(4, 7)
      expect(result).to eq(28)
    end
  end
end