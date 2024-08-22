# frozen_string_literal: true

# StringCalculator performs arithmetic by summing numbers from a string input
class StringCalculator
  def add(input)
    return 0 if input.empty?

    return split_values(input)[0] + split_values(input)[1] if input.include?(',')

    input.to_i
  end

  private

  def split_values(input)
    input.split(',').map(&:to_i)
  end
end
