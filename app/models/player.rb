class Player < ApplicationRecord
  has_many :albums_players
  has_many :albums, through: :albums_players

  validates_presence_of :name
end
