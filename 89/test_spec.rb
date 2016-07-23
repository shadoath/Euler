require_relative "./problem.rb"
RSpec.describe Number89 do

  it "gets CDLVIII to validate" do
    test = Number89.new
    test.line = "CDLVIII"
    test.number = 0
    test.roman_to_arabic
    binding.pry

    # expect(four_count.check_for_count_digit).to be 5832
  end

  it "gets MMMDCCCCXXXIV to validate" do
    test = Number89.new
    test.line = "MMMDCCCCXXXIV"
    test.number = 0
    p test.roman_to_arabic
    p test.arabic_to_roman(3934)

    # expect(four_count.check_for_count_digit).to be 5832
  end


  it "get answer" do
    roman = Number89.new
    roman.read_file('roman.txt')
    expect(roman.total_count - roman.reduced_count).to eq(743)
  end
end
