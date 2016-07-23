class Number89
  require 'pry'
  # I = 1
  # V = 5
  # X = 10
  # L = 50
  # C = 100
  # D = 500
  # M = 1000

  attr_accessor :line, :romans, :number, :total_count, :reduced_count
  def initialize()
    @total_count = 0
    @reduced_count = 0
    @roman_numeral_order = ["M", "D", "C", "L", "X", "V", "I"]
  end

  def read_file(file_name)
    File.open(file_name).each do |line|
      @line = line.gsub( /\n/, '')
      @total_count += @line.size
      @romans = {}
      @number = 0
      reduce_romans
    end
    p @total_count
    p @reduced_count
  end



  def reduce_romans
    p
    p roman_to_arabic
    p @line
    p arabic_to_roman
    @reduced_count += @roman.size
    # rule_one
    # rule_two_and_three
    # rebuild_romans
    # p @romans
  end

  # Numerals must be arranged in descending order of size.
  # Only one I, X, and C can be used as the leading numeral in part of a subtractive pair.
  # I can only be placed before V and X.
  # X can only be placed before L and C.
  # C can only be placed before D and M.
  # ERROR CDLVIII
  def roman_to_arabic
    skip_next = false
    @line.split('').each_with_index do |r, i|
      added_current = false
      if skip_next
        skip_next = false
        next
      end
      if i < @line.size - 1
        next_r = @line[i+1]
        if r == "I"
          if next_r == "V"
            @number += 4
            added_current = true
            skip_next = true
          elsif next_r == "X"
            @number += 9
            added_current = true
            skip_next = true
          end
        elsif r == "X"
          if next_r == "L"
            @number += 40
            added_current = true
            skip_next = true
          elsif next_r == "C"
            @number += 90
            added_current = true
            skip_next = true
          end
        elsif r == "C"
          if next_r == "D"
            @number += 400
            added_current = true
            skip_next = true
          elsif next_r == "M"
            @number += 900
            added_current = true
            skip_next = true
          end
        end
      end
      unless added_current
        @number += roman_to_i(r)
      end
    end
    @number
  end

  def roman_to_i(r)
    case r
    when "I"
      1
    when "V"
      5
    when "X"
      10
    when "L"
      50
    when "C"
      100
    when "D"
      500
    when "M"
      1000
    end
  end

  def arabic_to_roman(i = @number)
    @roman = ""
    (i / 1000).times { @roman += "M" }
    i %= 1000

    if i / 900 >= 1
      @roman += "CM"
      i %= 900
    end
    (i / 500).times { @roman += "D" }
    i %= 500
    if i / 400 >= 1
      @roman += "CD"
      i %= 400
    end
    (i / 100).times { @roman += "C" }
    i %= 100

    if i / 90 >= 1
      @roman += "XC"
      i %= 90
    end
    (i / 50).times { @roman += "L" }
    i %= 50
    if i / 40 >= 1
      @roman += "XL"
      i %= 40
    end
    (i / 10).times { @roman += "X" }
    i %= 10

    if i / 9 >= 1
      @roman += "IX"
      i %= 9
    end
    (i / 5).times { @roman += "V" }
    i %= 5
    if i / 4 >= 1
      @roman += "IV"
      i %= 4
    end
    i.times { @roman += "I" }
    @roman
  end

  #initial solution until subtractive combinations came up
  def rule_one
    @line.split('').each do |r|
      @romans[r] ? @romans[r] += 1 : @romans[r] = 1
    end
  end
  # M, C, and X cannot be equalled or exceeded by smaller denominations.
  # D, L, and V can each only appear once.
  def rule_two_and_three
    reduce_roman("I", "V", 5)
    reduce_roman("V", "X", 2)
    reduce_roman("X", "L", 5)
    reduce_roman("L", "C", 2)
    reduce_roman("C", "D", 5)
    reduce_roman("D", "M", 2)
  end

  def reduce_roman(r_less, r_greater, count)
    if @romans[r_less] && @romans[r_less] >= count
      @romans[r_greater] ? @romans[r_greater] += @romans[r_less]/count : @romans[r_greater] = @romans[r_less]/count
      @romans[r_less] = @romans[r_less] % count
    end
  end

  def rebuild_romans
    @line = ""
    @roman_numeral_order.each do |r|
      @romans[r] ? @romans[r].times { @line += r} : nil
    end
    @reduced_count += @line.size
  end

end


