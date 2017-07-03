class Board < ActiveRecord::Base
  belongs_to :user
  validates  :user_id, presence: true
  has_many   :ships
  serialize  :grid, Array
  
  def self.create_board(user)
    @board = Board.new
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
    @board.grid = @grid
    @board.user_id = user.id
    @board.save
    return @board
  end
end