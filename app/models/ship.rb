class Ship < ActiveRecord::Base
	belongs_to :board
	belongs_to :user
    attr_accessor :row, :col

	def initialize(options = {})
	  self.row = options[:row] ||= nil
      self.col = options[:col] ||= nil
	end
	# easy method?
	# def initialize(row,col) 
	# 	@row = nil
	# 	@col = nil
	# end
end
