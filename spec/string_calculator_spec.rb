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

    context 'two number' do
      it 'returns 7 for 3,4' do
        expect(calculator.add('3,4')).to eq(7)
      end

      it 'returns 16 for 9,7' do
        expect(calculator.add('9,7')).to eq(16)
      end

      it 'returns 100 for 50,50' do
        expect(calculator.add('50,50')).to eq(100)
      end
    end

    context 'three number' do
      it 'returns 8 for 3,1,4' do
        expect(calculator.add('3,1,4')).to eq(8)
      end

      it 'returns 133 for 25,12,96' do
        expect(calculator.add('25,12,96')).to eq(133)
      end
    end

    context 'multiples input' do
      it 'returns 13 for 3,1,4,5' do
        expect(calculator.add('3,1,4,5')).to eq(13)
      end

      it 'returns 21 for 3,1,4,5,8' do
        expect(calculator.add('3,1,4,5,8')).to eq(21)
      end
    end

    it 'handles the new line delimiters' do
      expect(calculator.add('1\n2,3,4')).to eq(10)
    end

    it 'handles the multiple new line delimiters' do
      expect(calculator.add('1\n2,3,4\n5')).to eq(15)
    end

    context 'custom delimiters' do
      it 'handles the semicolon' do
        expect(calculator.add('//;\n1;2;3;4')).to eq(10)
      end

      it 'handles the <' do
        expect(calculator.add('//<\n1<2<3<4')).to eq(10)
      end

      it 'handles the letter' do
        expect(calculator.add('//a\n1a2a3a4')).to eq(10)
      end
    end

    it 'raise an error if the input contains the negative number' do
      expect { calculator.add('1\n2,-3,4,-5') }.to raise_error("Negative numbers not allowed: -3, -5")
    end

    it 'raise an error if the input contains the negative number with custom delimiters' do
      expect { calculator.add('//;\n1;2;-3;4;-5') }.to raise_error("Negative numbers not allowed: -3, -5")
    end

    it 'rejects the number greater than 1000' do
      expect(calculator.add('1\n2,3,1001')).to eq(6)
    end

    context 'when the custom delimiter is *' do
      it 'should multiply and return the result' do
        expect(calculator.add('//*\n1*2*3*4')).to eq(24)
        expect(calculator.add('//*\n1*1')).to eq(1)
      end
    end
  end
end
