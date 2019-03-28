class Comment < ApplicationRecord
  belongs_to :game

  validates :content, presence: true

  # validate :limit_comments

end
