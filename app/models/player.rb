class Player < ActiveRecord::Base
  attr_accessible :game_id, :move_id, :name

  has_many :games
end
