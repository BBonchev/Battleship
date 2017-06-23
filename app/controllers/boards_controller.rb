class BoardsController < ApplicationController
  
  def new
    @grid = Board.new
    @grid = Array.new(10) {Array.new(10)}
    render 'new'
  end
end