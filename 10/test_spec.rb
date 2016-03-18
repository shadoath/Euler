require_relative "./problem.rb"
RSpec.describe Number10 do

  it "gets example to validate" do
    primed = Number10.new(12)
    expect(primed.sum).to be 28
  end

  it "gets answer" do
    primed = Number10.new(2000000)
    expect(primed.sum).to be 142913828922
  end

end
