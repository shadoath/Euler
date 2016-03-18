require_relative "./problem.rb"
RSpec.describe Number30 do

  it "gets true" do
    expect(Number30.power_of_(5)).to be 443839
  end
  it "gets gets numbers" do
    expect(Number30.power_of_(4)).to be > 0
  end
end
