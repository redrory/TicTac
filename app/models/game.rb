class Game < ActiveRecord::Base
  attr_accessible :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3, :name, :player_id, :owner_id

  belongs_to :owner, class_name: "Player"



end
