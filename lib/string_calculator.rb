# frozen_string_literal: true

# StringCalculator performs arithmetic by summing numbers from a string input
class StringCalculator
  def add(input)
    return 0 if input.empty?

    split_values(input)
  end

  private

  def split_values(input)
    input.split(',').map(&:to_i).sum
  end
end
