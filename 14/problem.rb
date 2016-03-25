class Number14
  require 'pry'
  def initialize()
    @chain = []
    @max_chain = []
  end

  def brute_force(top_number)
    while top_number > 10
      @num = top_number
      @chain = [@num]
      run
      if @chain.size > @max_chain.size
        @max_chain = @chain
      end
      top_number=top_number-1
    end
    @max_chain.first
  end

  def example
    @num = 13
    run
  end

  def run
    while @num > 1
      @num = test_number
      @chain << @num
    end
    @chain
  end

  def test_number
    @num.even? ? is_even : is_odd
  end

  def is_even
    @num/2
  end

  def is_odd
    @num*3+1
  end
end
