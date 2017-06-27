class Board < ActiveRecord::Base
  
  serialize :grid, Array
end