class GamesController < ApplicationController

  def create
    @boardp1 = Board.create_board(current_user)
    @boardp2 = Board.create_board(current_user)
    @grid = @boardp1.grid
  end
end