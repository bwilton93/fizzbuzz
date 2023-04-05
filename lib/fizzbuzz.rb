# The program can be passed a number.
# When passed a number that is a multiple of 3, the program returns the message 'Fizz'.
# When passed a number that is a multiple of 5, the program returns the message 'Buzz'.
# When passed a number that is a multiple of both 3 and 5, the program ignores the previous 2 rules and returns the message 'FizzBuzz'.
# In all other cases, the program simply returns the given number.

def fizzbuzz(num)
  result_array = []
  
  if num.is_a?(Integer)
    if num % 3 == 0
      if num % 5 == 0
        return "fizzbuzz"
      else
        return "fizz"
      end
    elsif num % 5 == 0
      return "buzz"
    else
      return num
    end
  else
    num.each do |i|
      if i % 3 == 0 
        if i % 5 == 0
          result_array.push("fizzbuzz")
        else        
          result_array.push("fizz")
        end
      elsif i % 5 == 0
        result_array.push("buzz")
      else 
        result_array.push(i)
      end
    end
  end

  result_array
end

puts fizzbuzz(1..20)
puts fizzbuzz(3)