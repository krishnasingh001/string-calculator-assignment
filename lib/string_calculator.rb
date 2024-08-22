# frozen_string_literal: true

# StringCalculator performs arithmetic by summing numbers from a string input
class StringCalculator
  def add(input)
    @input = input
    return 0 if input.empty?

    @numbers = parse_input
    raise_negative_number_error if contains_negative?
    @numbers.sum
  end

  private

  def parse_input
    newline_to_comma.split(delimiters).map(&:to_i)
  end

  def newline_to_comma
    @input.gsub('\n', delimiters)
  end

  def delimiters
    @input.start_with?('//') ? @input[2] : ','
  end

  def contains_negative?
    negative_numbers.any?
  end

  def negative_numbers
    @numbers.select(&:negative?)
  end

  def raise_negative_number_error
    raise "Negative numbers not allowed: #{negative_numbers.join(', ')}"
  end
end
