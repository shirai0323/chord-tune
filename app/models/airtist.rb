class Airtist < ApplicationRecord

  has_many :posts
  has_many :post_airtists
end
