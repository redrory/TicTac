class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :game_id
      t.integer :move_id
      t.string :name

      t.timestamps
    end
  end
end
