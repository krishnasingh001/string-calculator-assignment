# frozen_string_literal: true

# StringCalculator performs arithmetic by summing numbers from a string input
class StringCalculator
  def add(input)
    return 0 if input.empty?

    raise_negative_number_error(input) if contains_negative?(input)
    sum_of_split_values(input)
  end

  private

  def sum_of_split_values(input)
    numbers(input).sum
  end

  def numbers(input)
    newline_to_comma(input).split(delimiters(input)).map(&:to_i)
  end

  def newline_to_comma(input)
    input.gsub('\n', delimiters(input))
  end

  def delimiters(input)
    input.start_with?('//') ? input[2] : ','
  end

  def contains_negative?(input)
    negative_numbers(input).count.positive?
  end

  def negative_numbers(input)
    numbers(input).select(&:negative?)
  end

  def raise_negative_number_error(input)
    raise "Negative numbers not allowed: #{negative_numbers(input).join(', ')}"
  end
end
