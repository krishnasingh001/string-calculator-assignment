# frozen_string_literal: true

# StringCalculator performs arithmetic by summing numbers from a string input
class StringCalculator
  def add(input)
    return 0 if input.empty?

    if input.include?(',')
      input[0].to_i + input[2].to_i
    else
      input.to_i
    end
  end
end
