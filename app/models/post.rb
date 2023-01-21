class Post < ApplicationRecord

  validates :body, presence: true, length: { maximum: 65_535 }
  validates :song_title, presence: true, length: { maximum: 255 }
end
