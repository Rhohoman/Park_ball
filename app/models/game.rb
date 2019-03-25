class Game < ApplicationRecord
  has_many :statistics
  has_many :players, through: :statistics
end
