class Number10
  # https://projecteuler.net/problem=10
  require 'prime'
  def initialize(count)
    @prime_to = count
  end

  def sum
    Prime.each(@prime_to).reduce(:+)
  end
end


