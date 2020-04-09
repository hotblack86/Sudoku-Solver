class Sudoku

  attr_reader :grid 

  def initialize
    @grid = [
      [5,3,0,0,7,0,0,0,0],
      [6,0,0,1,9,5,0,0,0],
      [0,9,8,0,0,0,0,6,0],
      [8,0,0,0,6,0,0,0,3],
      [4,0,0,8,0,3,0,0,1],
      [7,0,0,0,2,0,0,0,6],
      [0,6,0,0,0,0,2,8,0],
      [0,0,0,4,1,9,0,0,5],
      [0,0,0,0,8,0,0,7,9]
    ]
  end

  def print
    @grid.each do |r|
      puts r.each { |p| p }.join(" ")
    end
  end

  def possible(y,x,n)
    # y axis
    for i in 0..8 do
      if @grid[y][i] == n
        return false
      end
    end
    # x axis
    for i in 0..8 do
      if @grid[i][x] == n
        return false
      end
    end
    # 3 x 3 box
    x0 = (x / 3).floor() * 3
    y0 = (y / 3).floor() * 3
    for i in 0..2 do
      for j in 0..2 do
        if @grid[y0+i][x0+j] == n
          return false
        end
      end
    end
    @grid[y][x] = n
    return true
  end

  def solve
    for y in 0..8 do
      for x in 0..8 do
        if @grid[y][x] == 0
          for n in 1..9 do
            if possible(y,x,n)
              @grid[y][x] = n
              solve() # Recursion
              @grid[y][x] = 0 # Backtracking
            end
          end
          return
        end
      end
    end 
    print()
  end



end
