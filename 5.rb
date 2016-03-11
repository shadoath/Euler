class Number5

  require 'pry'

  def initialize(num, range)
    @number = num
    @range = (range).to_a
  end

  def smallest_number
    while true
      count = @range.select do |range|
        @number%range == 0
      end.size
      if count == @range.size
        puts @number
        return @number
      else
        @number = @number + 2
      end
    end
    @number
  end
end

# This does not require programming at all.
# Compute the prime factorization of each number from 1 to 20, and multiply the greatest power of each prime together:

# 20 = 2^2 * 5
# 19 = 19
# 18 = 2 * 3^2
# 17 = 17
# 16 = 2^4
# 15 = 3 * 5
# 14 = 2 * 7
# 13 = 13
# 11 = 11

# All others are included in the previous numbers.

# ANSWER: 2^4 * 3^2 * 5 * 7 * 11 * 13 * 17 * 19 = 232 792 560
