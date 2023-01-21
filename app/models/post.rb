class Post < ApplicationRecord

  belongs_to :user

  has_many :airtists
  has_many :post_airtists
  has_many :genres
  has_many :music_genres

  validates :body, presence: true, length: { maximum: 65_535 }
  validates :song_title, presence: true, length: { maximum: 255 }
end
