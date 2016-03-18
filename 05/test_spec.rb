require_relative "./problem.rb"
RSpec.describe Number5 do

  it "gets example to validate" do
    n = Number5.new(2510, (1..10))
    expect(n.smallest_number).to be 2520
  end

  it "gets example to validate" do
    n = Number5.new(2510, (1..20))
    expect(n.smallest_number).to be > 232792560
  end
end
