# frozen_string_literal: true

# StringCalculator performs arithmetic by summing numbers from a string input
class StringCalculator
  def add(input)
    return 0 if input.empty?

    split_values = input.split(',').map(&:to_i)

    if input.include?(',')
      split_values[0] + split_values[1]
    else
      input.to_i
    end
  end
end
