require 'calculator'

describe Calculator do
  it 'sums 2 numbers' do
    calc = Calculator.new
    result = calc.sum(5,7)
    expect(result).to eql(11)
  end
end