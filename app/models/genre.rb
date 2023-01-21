class Genre < ApplicationRecord

  has_many :posts
  has_many :music_genres
end
