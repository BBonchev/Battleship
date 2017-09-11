class BoardsController < ApplicationController
  
  def new
    @board = Board.new(params[:user_params])
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
    @board.save
    redirect_to game_path
  end
end