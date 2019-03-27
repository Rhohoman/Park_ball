class Team < ApplicationRecord
  has_many :players

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
end
