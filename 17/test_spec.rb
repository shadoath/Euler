require_relative "./problem.rb"
RSpec.describe Number17 do

  it "gets exmaple to validate" do
    number = Number17.new()
    expect(number.num_to_string(1)).to eq("one")
    expect(number.num_to_string(2)).to eq("two")
    expect(number.num_to_string(10)).to eq("ten")
    expect(number.num_to_string(11)).to eq("eleven")
    expect(number.num_to_string(20)).to eq("twenty")
    expect(number.num_to_string(100)).to eq("one-hundred")
    expect(number.num_to_string(101)).to eq("one-hundred and one")
  end

  it "gets answer to validate" do
    number = Number17.new()
    expect(number.brute_force(1000000)).to eq(837799)
  end

end
