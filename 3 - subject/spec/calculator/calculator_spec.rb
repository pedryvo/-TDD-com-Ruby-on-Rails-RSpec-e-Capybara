require 'calculator'

describe Calculator do

  subject(:calc) { described_class.new() }

  context '.sum' do
    it 'positive numbers' do
      result = calc.sum(5, 6)
      expect(result).to eql(11)
    end

    it 'negative numbers' do
      result = calc.sum(-5, -6)
      expect(result).to eql(-11)
    end
  end

  context '.decrease' do
    it '2 numbers' do
      result = calc.decrease(10, 6)
      expect(result).to eql(4)
    end
  end

  context '.divide' do
    it '2 numbers' do
      result = calc.divide(20, 5)
      expect(result).to eq(4)
    end
  end

  context '.multiply' do
    it '2 numbers' do
      result = calc.multiply(4, 7)
      expect(result).to eq(28)
    end
  end
end