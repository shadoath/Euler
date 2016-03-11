class Number30

  attr_accessor :total_amount

  def initialize
    @total_amount = 0
  end

  def self.reduce_and_check(num, power)
    total = num.to_s.chars.map do |num|
      num.to_i**power
    end.reduce(:+)
    if total == num
      puts "n:#{num} => t:#{total}"
    end
    total == num
  end

  def self.power_of_(power)
    (2..999999).select do |num|
      if reduce_and_check(num, power)
        num
      end
    end.reduce(:+)
  end
end
