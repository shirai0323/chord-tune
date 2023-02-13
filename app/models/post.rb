class Post < ApplicationRecord

  belongs_to :user, optional: true

  has_many :airtists
  has_many :post_airtists
  has_many :genres
  has_many :music_genres
  has_many :bookmarks, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :scores, dependent: :destroy

  validates :body, presence: true, length: { maximum: 65_535 }
  validates :song_title, presence: true, length: { maximum: 255 }

  def self.ransackable_attributes(auth_object = nil)
    %w[song_title body]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[airtists bookmarks comments genres music_genres post_airtists scores user]
  end
end
