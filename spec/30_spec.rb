require './30.rb'

RSpec.describe Number30 do

  it "gets true" do
    expect(Number30.power_of_5).to be true
  end
  it "gets gets numbers" do
    expect(Number30.power_of_4).to be >0
  end
end
