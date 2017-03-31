class Number2

  require 'pry'
  def initialize()
    @max        = 4000000
    @total_even = 0
    @prev_num   = 1
    @cur_num    = 2
  end

  def fibbed
    @total_even += @cur_num
    while @cur_num <= @max
      fib_it
    end
    @total_even
  end

  def fib_it
    num = @prev_num + @cur_num
    if num.even?
      @total_even += num
    end
    @prev_num = @cur_num
    @cur_num = num
  end
end
