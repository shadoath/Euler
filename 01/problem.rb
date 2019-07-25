class Number1
  require 'pry'

  def initialize(max)
    @max = max
    @sum = 0
  end

  def count_em_up
    current = 1
    while current < @max
      if current % 3 == 0 || current % 5 == 0
        @sum += current
      end
      current += 1
    end
    @sum
  end
end
