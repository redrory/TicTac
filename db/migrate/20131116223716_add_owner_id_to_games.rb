class AddOwnerIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :owner_id, :integer
  end
end
