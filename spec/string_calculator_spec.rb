# frozen_string_literal: true

require 'string_calculator'

describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    it 'exists as a instance method' do
      expect(calculator).to respond_to(:add)
    end

    it 'returns the 0 for an empty string' do
      expect(calculator.add('')).to eq(0)
    end

    context 'single number' do
      it 'returns 0 for 0' do
        expect(calculator.add('0')).to eq(0)
      end

      it 'returns 3 for 3' do
        expect(calculator.add('3')).to eq(3)
      end

      it 'returns 10 for 10' do
        expect(calculator.add('10')).to eq(10)
      end

      it 'returns 110 for 110' do
        expect(calculator.add('110')).to eq(110)
      end
    end
  end
end
