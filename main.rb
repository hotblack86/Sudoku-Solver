require_relative 'lib/ss'

sudoku = Sudoku.new
sudoku.print
puts "\n"
puts "Output = #{sudoku.possible(4,4,5)}"