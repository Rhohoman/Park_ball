class Game < ApplicationRecord
  has_many :statistics
  has_many :players, through: :statistics

  validates :date, presence: true
  validates :location , presence: true

  validate :no_duplicate_games

  def location_date_glue
    "#{location} - #{date}"
  end

  def no_duplicate_games

    location_date_list = []

    games = Game.all

    games.each do |game|
      current_location_date = game.location_date_glue #thank you simon
      location_date_list.push(current_location_date)
    end

    if location_date_list.include?(self.location_date_glue)
      errors.add(:game_id, "already exists.")
    end

  end

end
