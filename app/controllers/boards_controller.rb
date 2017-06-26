class BoardsController < ApplicationController
  
  def new
      @actions = ['none', 'hit', 'miss', 'ship', 'special']
      @grid = []
      for row in 0..9
          @grid.push([])
          for column in 0..9
            @grid[row].push({
      			'isGuessed' => false,
      			'action' => @actions.sample
  		    })
          end
      end
  end
end