class Player < ApplicationRecord
  belongs_to :team
  has_many :statistics
  has_many :games, through: :statistics

  validates :name, presence: true
  validates :position, presence: true
  validates :team_id, presence: true
  validates :age, numericality: {greater_than_or_equal_to: 1, only_integer: true}

  def average_points
    points_array = self.statistics.map do |stat|
      stat.points
    end

    sum_points = points_array.compact.sum
    if sum_points != 0
      average_points = (sum_points/1.0) / points_array.compact.length
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
      average_rebounds = (sum_rebounds/1.0) / rebounds_array.compact.length
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
      average_assists = (sum_assists/1.0) / assists_array.compact.length
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
      average_steals = (sum_steals/1.0) / steals_array.compact.length
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
      average_blocks = (sum_blocks/1.0) / blocks_array.compact.length
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
      average_turnovers = (sum_turnovers/1.0) / turnovers_array.compact.length
      return average_turnovers
    else
      return 0
    end
  end


  def self.player_average_most_points
    # all_players_average_points = []
    player_max_avg_points = 0
    scoring_leader = nil

    Player.all.each do |player|
      if player.average_points > player_max_avg_points
        player_max_avg_points = player.average_points
        scoring_leader = player.name
      end
    end
    [scoring_leader, player_max_avg_points]
  end


  def self.player_average_most_rebounds
    player_max_avg_boards = 0
    big_man = nil

    Player.all.each do |player|
      if player.average_rebounds > player_max_avg_boards
        player_max_avg_boards = player.average_rebounds
        big_man = player.name
      end
    end
    [big_man, player_max_avg_boards]
  end

  def self.player_average_most_assists
    player_max_avg_assists = 0
    big_man = nil

    Player.all.each do |player|
      if player.average_assists > player_max_avg_assists
        player_max_avg_assists = player.average_assists
        big_man = player.name
      end
    end
    [big_man, player_max_avg_assists]
  end

  def self.player_average_most_steals
    player_max_avg_steals = 0
    quick_man = nil

    Player.all.each do |player|
      if player.average_steals > player_max_avg_steals
        player_max_avg_steals = player.average_steals
        quick_man = player.name
      end
    end
    [quick_man, player_max_avg_steals]
  end

  def self.player_average_most_blocks
    player_max_avg_blocks = 0
    wall_man = nil

    Player.all.each do |player|
      if player.average_blocks > player_max_avg_blocks
        player_max_avg_blocks = player.average_blocks
        wall_man = player.name
      end
    end
    [wall_man, player_max_avg_blocks]
  end


end
