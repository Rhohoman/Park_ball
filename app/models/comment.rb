class Comment < ApplicationRecord
  belongs_to :game

  validates :name, presence: true
  validates :content, presence: true, length: { maximum: 75 }

  # validate :limit_comments

end
