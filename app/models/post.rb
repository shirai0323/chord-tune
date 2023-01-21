class Post < ApplicationRecord

  belongs_to :user

  validates :body, presence: true, length: { maximum: 65_535 }
  validates :song_title, presence: true, length: { maximum: 255 }
end
