require_relative "./maze.rb"
RSpec.describe Maze do

  it "gets example to validate" do
    s = Maze.new()
    s.basic_maze
    expect(s.is_wall('l')).to be true
    expect(s.is_wall('r')).to be true
    expect(s.is_wall('f')).to be false
    expect(s.is_wall('b')).to be true
  end

  it "solves basic maze" do
    s = Maze.new()
    s.basic_maze
    s.run_maze
  end

  it "solves normal maze" do
    s = Maze.new()
    s.normal_maze
    s.run_maze
  end
end
