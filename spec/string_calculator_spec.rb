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
  end
end
