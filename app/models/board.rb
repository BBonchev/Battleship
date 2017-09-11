class Board < ActiveRecord::Base
 
  serialize  :grid, Array
  
  def self.create_board(user)
    @board = Board.new
    @num =  ['one', 'two', 'nine','eight', 'three', 'four', 'five', 'six', 'seven']
    @grid = Array.new
    for row in 0..8
      @grid.push([])
      for column in 0..8
        @grid[row].push({
    		'numbers' => @num.sample
          	   })
      end
    end
    @board.grid = @grid
    @board.save
    return @board
  end
end