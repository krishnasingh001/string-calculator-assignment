# frozen_string_literal: true

# StringCalculator performs arithmetic by summing numbers from a string input
class StringCalculator
  def add(input)
    return 0 if input.empty?

    sum_of_split_values(input)
  end

  private

  def sum_of_split_values(input)
    newline_to_comma(input).split(delimiters).map(&:to_i).sum
  end

  def newline_to_comma(input)
    input.gsub('\n', delimiters)
  end

  def delimiters
    ','
  end
end
