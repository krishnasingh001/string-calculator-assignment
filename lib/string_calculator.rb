# frozen_string_literal: true

# StringCalculator performs arithmetic by summing numbers from a string input
class StringCalculator
  def add(input)
    return 0 if input.empty?

    split_values = input.split(',')
    if input.include?(',')
      split_values[0].to_i + split_values[1].to_i
    else
      input.to_i
    end
  end
end
