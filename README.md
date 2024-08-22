# string-calculator

### Problem statement

1. Create a simple String calculator with a method signature like this:

  ```ruby
    def add(string_numbers)
    end
  ```
  ```
    Input: a string of comma-separated numbers
    Output: an integer, sum of the numbers
    
    Examples:
    
    Input: "", Output: 0
    Input: "1", Output: 1
    Input: "1,5", Output: 6
  ```

2. Allow the `add` method to handle any amount of numbers.

3. Allow the `add` method to handle new lines between numbers (instead of commas). (`"1\n2,3"` should return `6`)

4. Support different delimiters:

  - To change the delimiter, the beginning of the string will contain a separate line that looks like this: `"//[delimiter]\n[numbers…]"`. For example, `"//;\n1;2"` where the delimiter is `";"`` should return `3`.

5. Calling `add` with a negative number will throw an exception: `"negative numbers not allowed <negative_number>"`.

  - If there are multiple negative numbers, show all of them in the exception message, separated by commas.


### Features
1. **Sum Numbers:** Sum all numbers provided in a string input.
2. **Custom Delimiters:** Support for custom delimiters defined with a prefix `//`.
3. **Error Handling:** Raises an error if negative numbers are found in the input.

### Usage

To use **StringCalculator**, instantiate the class and call the `add` method with a string input. 

Here’s an example:

  ```ruby
  # Create an instance of StringCalculator
  calculator = StringCalculator.new

  # Add numbers from a string
  result = calculator.add('1,2,3')
  puts result  # Output: 6

  # Using a custom delimiter
  result = calculator.add('//;\n1;2;3')
  puts result  # Output: 6

  # Handling negative numbers (will raise an error)
  begin
    calculator.add('1,-2,3')
  rescue => e
    puts e.message  # Output: Negative numbers not allowed: -2
  end
  ```
