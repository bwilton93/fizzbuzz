# The program can be passed a number.
# When passed a number that is a multiple of 3, the program returns the message 'Fizz'.
# When passed a number that is a multiple of 5, the program returns the message 'Buzz'.
# When passed a number that is a multiple of both 3 and 5, the program ignores the previous 2 rules and returns the message 'FizzBuzz'.
# In all other cases, the program simply returns the given number.

require 'fizzbuzz'

range = [
  1,
  2,
  'fizz',
  4,
  'buzz',
  'fizz',
  7,
  8,
  'fizz',
  'buzz',
  11,
  'fizz',
  13,
  14,
  'fizzbuzz',
  16,
  17,
  'fizz',
  19,
  'buzz'
]

num = rand(9999999)

describe 'fizzbuzz' do
  it 'returns correct range when passed 1..20' do
    expect(fizzbuzz(1..20)).to eq range
  end

  if num % 3 == 0
    if num % 5 == 0
      it 'returns "fizzbuzz" when passed a multiple of 3 and 5' do
        expect(fizzbuzz(num)).to eq 'fizzbuzz'
      end
    else
      it 'returns "fizz" when passed a multiple of 3' do
        expect(fizzbuzz(num)).to eq 'fizz'
      end
    end
  elsif num % 5 == 0
    it 'returns "buzz" when passed a multiple of 5' do
      expect(fizzbuzz(num)).to eq 'buzz'
    end
  else
    it 'returns num when passed a non-multiple of 3 or 5' do
      expect(fizzbuzz(num)).to eq num.to_s
    end
  end
end
