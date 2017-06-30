class GameController < ApplicationController
  
  def index 
    @games = Game.all
    @game = Game.new
  end
  
  # work
  def create                                          
    @game = Game.new(params[:generate_random_id])
    if @game.save
      redirect_to game_show_path(@game)
    else
    render 'index'
    end
  end
  
  # work
  def show
    @game = Game.find(params[:generate_random_id])
    render 'show'
  end
end