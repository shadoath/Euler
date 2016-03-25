require_relative "./problem.rb"
RSpec.describe Number13 do

  it "gets answer to validate" do
    number = Number13.new()
    expect(number.sum_numbers).to eq(5537376230390876637302048746832985971773659831892672)
    expect(number.first_ten).to eq "5537376230"
  end

end
