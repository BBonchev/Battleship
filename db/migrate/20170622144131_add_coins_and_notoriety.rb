class AddCoinsAndNotoriety < ActiveRecord::Migration
  def change
  	add_column :users, :coins, :integer
  	add_column :users, :notoriety, :integer
  end
end
