class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.integer :size
      t.integer :row
      t.integer :col
      t.integer :orientation
      t.integer :life
      t.integer :type

      t.timestamps null: false
    end
  end
end
