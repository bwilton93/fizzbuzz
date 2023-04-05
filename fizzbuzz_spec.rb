# The program can be passed a number.
# When passed a number that is a multiple of 3, the program returns the message 'Fizz'.
# When passed a number that is a multiple of 5, the program returns the message 'Buzz'.
# When passed a number that is a multiple of both 3 and 5, the program ignores the previous 2 rules and returns the message 'FizzBuzz'.
# In all other cases, the program simply returns the given number.

require './fizzbuzz'

describe 'fizzbuzz' do
  it '3 equals Fizz' do
    expect(fizzbuzz(3)).to eq 'Fizz'
  end

  it '5 equals Buzz' do
    expect(fizzbuzz(5)).to eq 'Buzz'
  end
end