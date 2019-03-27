class Player < ApplicationRecord
  belongs_to :team
  has_many :statistics
  has_many :games, through: :statistics

  validates :name, presence: true
  validates :position, presence: true
  validates :team_id, presence: true

  def average_points
    points_array = self.statistics.map do |stat|
      stat.points
    end

    sum_points = points_array.compact.sum
    if sum_points != 0
      average_points = sum_points / points_array.compact.length
      #not a float
      return average_points
    else
      return 0
    end
  end

  def average_rebounds
    rebounds_array = self.statistics.map do |stat|
      stat.rebounds
    end

    sum_rebounds = rebounds_array.compact.sum
    if sum_rebounds != 0
      average_rebounds = sum_rebounds / rebounds_array.compact.length
      return average_rebounds
    else
      return 0
    end
  end

  def average_assists
    assists_array = self.statistics.map do |stat|
      stat.assists
    end

    sum_assists = assists_array.compact.sum
    if sum_assists != 0
      average_assists = sum_assists / assists_array.compact.length
      return average_assists
    else
      return 0
    end
  end

  def average_steals
    steals_array = self.statistics.map do |stat|
      stat.steals
    end

    sum_steals = steals_array.compact.sum
    if sum_steals != 0
      average_steals = sum_steals / steals_array.compact.length
      return average_steals
    else
      return 0
    end
  end

  def average_blocks
    blocks_array = self.statistics.map do |stat|
      stat.blocks
    end

    sum_blocks = blocks_array.compact.sum
    if sum_blocks != 0
      average_blocks = sum_blocks / blocks_array.compact.length
      return average_blocks
    else
      return 0
    end
  end

  def average_turnovers
    turnovers_array = self.statistics.map do |stat|
      stat.turnovers
    end

    sum_turnovers = turnovers_array.compact.sum
    if sum_turnovers != 0
      average_turnovers = sum_turnovers / turnovers_array.compact.length
      return average_turnovers
    else
      return 0
    end
  end


end
