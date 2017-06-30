class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :boardP1id
      t.integer :boardP2id

      t.timestamps null: false
    end
  end
end
