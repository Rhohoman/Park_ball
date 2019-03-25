class Player < ApplicationRecord
  belongs_to :team
  has_many :statistics
  has_many :games, through: :statistics
end
