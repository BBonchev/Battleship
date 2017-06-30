class ShipsController < ApplicationController
	def new
	end

	def create #(row: nil, col: nil)
	    @ship = Ship.new(ship_params)
	    # @ship = current_user.ship.build(ship_params) #towa, ako e lognat
	end

	def ship_params
	     params.require(:ship).permit(:size,:type,:row,:col)
	end
end
