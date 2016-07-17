class Number17
  require 'pry'
  def initialize()
    @single_digit = %w(zero one two three four five six seven eight nine)
    @double_digit = %w(ten twenty thirty fourty fifty sixty seventy eighty ninety one-hundred)
    @triple_digit = %w(hundred)
    @num = 0
  end

  def num_to_string(num)
    binding.pry
    case num.size
    when 1
      @single_digit[num]
    when 2
      @double_digit[num]
    when 3
      if (num % 100).size == 1
        @triple_digit[num]
      else
        @triple_digit[num] + " and "
      end
    end

  end

  def done_with_one_BIG_array
    # https://github.com/radar/humanize/blob/master/lib/cache.rb
    # then .join.gsub(' ','').gsub('-','').size
    # and remove 4 for 'zero' and add 11 for 'one thousand'
  end
end
