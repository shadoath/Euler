class Number1
  require 'pry'

  def initialize(max)
    @max    = max
    @threes = []
    @fives  = []
  end

  def count_em_up
    current = 1
    while current < @max
      if current % 3 == 0
        @threes << current
      end
      if current % 5 == 0
        @fives << current
      end
      current += 1
    end
    (@threes + @fives).uniq.sum
  end
end
