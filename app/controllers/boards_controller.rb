class BoardsController < ApplicationController
  
  def new
    @board = Board.new(params[:user_params])
    @actions = ['none', 'hit', 'miss', 'ship', 'special']
    @grid = Array.new
    for row in 0..9
      @grid.push([])
      for column in 0..9
        @grid[row].push({
    		'action' => @actions.sample
  	   })
      end
    end
    @board.save
    render 'boards/new'
  end
end