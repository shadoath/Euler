require_relative "./problem.rb"
RSpec.describe Number14 do

  it "gets exmaple to validate" do
    number = Number14.new()
    expect(number.example).to eq([40, 20, 10, 5, 16, 8, 4, 2, 1])
  end

  it "gets answer to validate" do
    number = Number14.new()
    expect(number.brute_force(1000000)).to eq(837799)
  end

end
