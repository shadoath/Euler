require_relative "./problem.rb"
RSpec.describe Number1 do

  it "gets test to validate" do
    two = Number1.new(10)
    expect(two.count_em_up).to be 23
  end

  it "gets bigger number to validate" do
    two = Number1.new(20)
    expect(two.count_em_up).to be 78
  end

  it "gets important number to validate" do
    two = Number1.new(42)
    expect(two.count_em_up).to be 408
  end

  it "gets answer to validate" do
    two = Number1.new(1000)
    expect(two.count_em_up).to be 233168
  end
end
