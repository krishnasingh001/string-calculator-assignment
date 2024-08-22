# frozen_string_literal: true

# StringCalculator performs arithmetic by summing numbers from a string input
class StringCalculator
  def add(input)
    return 0 if input.empty?

    sum_of_split_values(input)
  end

  private

  def sum_of_split_values(input)
    input.split(',').map(&:to_i).sum
  end
end
