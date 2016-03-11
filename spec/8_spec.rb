require './8.rb'
require 'pry'
RSpec.describe Number8 do

  it "gets example to validate" do
    n = Number8.new
    expect(n.check_for_count_digit(4)).to be 5832
    expect(n.check_for_count_digit(13)).to be 23514624000
  end

end
