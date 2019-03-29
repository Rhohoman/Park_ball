class Statistic < ApplicationRecord
  belongs_to :player
  belongs_to :game

  validates :player_id, presence: true
  validates :game_id, presence: true
  validates :points, presence: true, numericality: {greater_than_or_equal_to: 0, only_integer: true}
  validates :rebounds, presence: true, numericality: {greater_than_or_equal_to: 0, only_integer: true}
  validates :assists, presence: true, numericality: {greater_than_or_equal_to: 0, only_integer: true}
  validates :steals, presence: true, numericality: {greater_than_or_equal_to: 0, only_integer: true}
  validates :blocks, presence: true, numericality: {greater_than_or_equal_to: 0, only_integer: true}
  validates :turnovers, presence: true, numericality: {greater_than_or_equal_to: 0, only_integer: true}

  validate :no_dupes_players, on: :create

  def no_dupes_players
    players_list = []
    current_stats = Statistic.where(game_id: self.game_id)

    current_stats.each do |stat|
      players_list.push(stat.player_id)
    end

    if players_list.include?(self.player_id)
      errors.add(:player_id, "is already in current game.")
    end
  end


end
