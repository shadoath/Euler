require_relative "./problem.rb"
RSpec.describe Number2 do

  it "gets answer to validate" do
    two = Number2.new()
    expect(two.fibbed).to be 4613732
  end

end
