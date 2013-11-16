class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :player_id
      t.string :a1
      t.string :a2
      t.string :a3
      t.string :b1
      t.string :b2
      t.string :b3
      t.string :c1
      t.string :c2
      t.string :c3

      t.timestamps
    end
  end
end
