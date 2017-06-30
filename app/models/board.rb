class Board < ActiveRecord::Base
  belongs_to :user
  has_many   :ships
  serialize  :grid, Array
end