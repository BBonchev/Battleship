class Board < ActiveRecord::Base
  has_many :ships
  belongs_to :user 
  serialize :grid, Array
end