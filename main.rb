require_relative 'lib/ss'

puts "\n"
puts "Here is the Sudoku board. 0 represents an empty space"
puts "\n"
sudoku = Sudoku.new
sudoku.print()
puts "\n"
puts "S O L U T I O N ~"
puts "\n"
sudoku.solve()
puts "\n"