# frozen_string_literal: true

# StringCalculator performs arithmetic by summing numbers from a string input
class StringCalculator
  def add(input)
    return 0 if input.empty?

    return split_values(input)[0] + split_values(input)[1] if split_values(input).count == 2

    return split_values(input)[0] + split_values(input)[1] + split_values(input)[2] if split_values(input).count == 3

    input.to_i
  end

  private

  def split_values(input)
    input.split(',').map(&:to_i)
  end
end
