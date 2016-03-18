class Number9
  # https://projecteuler.net/problem=9
  attr_accessor :a, :b, :c

  def initialize(count)
    @looking = true
    @count = count
    @a = 3
    @b = 4
    @c = 5
    @r = 2
  end

  # Dickson's method
  # (r**2)/2 = st
  # x = r + s
  # y = r + t
  # z = r + s + t
  require 'prime'
  def factors_of(number)
    primes, powers = number.prime_division.transpose
    exponents = powers.map{|i| (0..i).to_a}
    divisors = exponents.shift.product(*exponents).map do |powers|
      primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
    end
    divisors.sort.map{|div| [div, number / div]}
  end


  def check_to
    while @r < @count/2 && @looking
      factors = factors_of((@r**2)/2)
      factors.first(factors.count/2).each do |s, t|
        @a = @r + s
        @b = @r + t
        @c = @r + s + t
        check_p_triangle
        unless @looking
          return @a*@b*@c
        end
      end
      @r+=1
    end
    return @a*@b*@c
  end

  def check_p_triangle
    if @a**2 + @b**2 == @c**2 && @a+@b+@c == @count
      @looking = false
    end
  end

end


