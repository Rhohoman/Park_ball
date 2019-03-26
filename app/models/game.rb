class Game < ApplicationRecord
  has_many :statistics
  has_many :players, through: :statistics

  def location_date_glue
    "#{location} - #{date}"
  end
  
end
