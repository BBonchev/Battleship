class BoardsController < ApplicationController
  
  def new
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
      @board = Board.new
      @board.save
      render 'boards/new'
  end
end