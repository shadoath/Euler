require_relative "./problem.rb"
RSpec.describe Number11 do

  it "gets example to validate" do
    product = Number11.new()
    expect(product.biggest_product).to be 70600674
  end

end
