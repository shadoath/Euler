require '../9.rb'
RSpec.describe Number9 do

  it "gets example to validate" do
    four_count = Number9.new(12)
    expect(four_count.check_to).to be 60
    eight_count = Number9.new(1000)
    expect(eight_count.check_to).to be 31875000
  end

end
