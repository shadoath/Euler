require 'pry'
require 'prime'
class Number3

  def initialize(num)
    @number = num
  end

  def largest_prime
    @number.prime_division.last.first
  end
end
