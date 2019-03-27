class Game < ApplicationRecord
  has_many :statistics
  has_many :players, through: :statistics

  validates :date, presence: true
  validates :location , presence: true


  def location_date_glue
    "#{location} - #{date}"
  end

end
