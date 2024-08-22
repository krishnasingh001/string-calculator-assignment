# frozen_string_literal: true

# StringCalculator performs arithmetic by summing numbers from a string input
class StringCalculator
  def add(input)
    return 0 if input.empty?

    sum_of_split_values(input)
  end

  private

  def sum_of_split_values(input)
    newline_to_comma(input).split(delimiters(input)).map(&:to_i).sum
  end

  def newline_to_comma(input)
    input.gsub('\n', delimiters(input))
  end

  def delimiters(input)
    if input.start_with?('//')
      ';'
    else
      ','
    end
  end
end
