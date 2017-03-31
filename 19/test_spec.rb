require_relative "./problem.rb"
RSpec.describe Number19 do

  it "gets test to validate" do
    number = Number19.new('1900-01-01', '1901-01-01')
    expect(number.sunday_count).to eq 2
  end

  it "gets The answer to validate" do
    number = Number19.new('1901-01-01', '1925-09-03')
    expect(number.sunday_count).to eq 42
  end

  it "gets Euler answer to validate" do
    number = Number19.new('1901-01-01', '2000-12-31')
    expect(number.sunday_count).to eq 171
  end

end
