require './8.rb'
require 'pry'
RSpec.describe Number8 do

  it "gets example to validate" do
    four_count = Number8.new(4)
    expect(four_count.check_for_count_digit).to be 5832
    eight_count = Number8.new(13)
    expect(eight_count.check_for_count_digit).to be 23514624000
  end

end
