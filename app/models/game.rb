class Game < ApplicationRecord
  has_many :statistics
  has_many :players, through: :statistics

  # def all_game_stats
  #   self.statistics
  #   #game show page
  # end

end
