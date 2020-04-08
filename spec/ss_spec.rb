require 'ss.rb'

RSpec.describe Sudoku do

  it '#possible Returns false if number can not be placed at position(y,x)' do
    sudoku = Sudoku.new
    expect(sudoku.possible(0,0,5)).to eq(false)
  end

end