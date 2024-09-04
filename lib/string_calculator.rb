# frozen_string_literal: true

require 'byebug'

# StringCalculator performs arithmetic by summing numbers from a string input
class StringCalculator
  def add(input)
    @input = input
    return 0 if input.empty?

    @numbers = parse_input
    raise_negative_number_error if negative_numbers.any?
    delimiter == '*' ? multiply : @numbers.sum
  end

  private

  def multiply
    @numbers.select(&:positive?).reduce(:*)
  end

  def parse_input
    newline_to_comma
      .split(delimiter)
      .map(&:to_i)
      .reject { |num| num > 1000 }
  end

  def newline_to_comma
    @input.gsub('\n', delimiter)
  end

  def delimiter
    @input.start_with?('//') ? @input[2] : ','
  end

  def negative_numbers
    @negative_numbers ||= @numbers.select(&:negative?)
  end

  def raise_negative_number_error
    raise "Negative numbers not allowed: #{negative_numbers.join(', ')}"
  end
end
