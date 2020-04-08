require 'ss.rb'

RSpec.describe Sudoku do

  it '#possible Returns false if number can not be placed at position(y,x)' do
    sudoku = Sudoku.new
    expect(sudoku.possible(4,4,3)).to eq(false)
  end

  it '#possible Returns true if number can be placed at position(y,x)' do
    sudoku = Sudoku.new
    expect(sudoku.possible(4,4,5)).to eq(true)
  end

end