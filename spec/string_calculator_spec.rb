require 'string_calculator'

describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    it 'exists as a instance method' do
      expect(calculator).to respond_to(:add)
    end
  end
end
