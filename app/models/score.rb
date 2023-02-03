class Score < ApplicationRecord
  enum kind: { lyric: 0, chord: 1 }

  belongs_to :post

  validates :content, presence: true
end
