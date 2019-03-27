class Statistic < ApplicationRecord
  belongs_to :player
  belongs_to :game

  validates :player_id, presence: true
  validates :game_id, presence: true
  validates :points, presence: true, numericality: true
  validates :rebounds, presence: true, numericality: true
  validates :assists, presence: true, numericality: true
  validates :steals, presence: true, numericality: true
  validates :blocks, presence: true, numericality: true
  validates :turnovers, presence: true, numericality: true

  validate :no_dupes_players

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
