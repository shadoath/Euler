require_relative "./problem.rb"
require 'pry'
RSpec.describe Number3 do

  it "gets example to validate" do
    n = Number3.new(13195)
    expect(n.largest_prime).to eq 29
  end

  it "gets example to validate" do
    n = Number3.new(600851475143)
    expect(n.largest_prime).to eq 6857
  end
end
