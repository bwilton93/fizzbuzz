# The program can be passed a number.
# When passed a number that is a multiple of 3, the program returns the message 'Fizz'.
# When passed a number that is a multiple of 5, the program returns the message 'Buzz'.
# When passed a number that is a multiple of both 3 and 5, the program ignores the previous 2 rules and returns the message 'FizzBuzz'.
# In all other cases, the program simply returns the given number.

def fizzbuzz_calc(number)
  if number % 3 == 0
    if number % 5 == 0
      return "fizzbuzz"
    else
      return "fizz"
    end
  elsif number % 5 == 0
    return "buzz"
  else
    return number
  end
end

def fizzbuzz(num)
  result_array = []
  if num.is_a?(Integer)
    result_array.push(fizzbuzz_calc(num))
    return result_array.join("")
  else
    num.each do |i|
      result_array.push(fizzbuzz_calc(i))
    end
  end
  result_array
end
