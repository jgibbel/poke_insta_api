class Post < ApplicationRecord
  belongs_to :pokemon
  has_many :likes
  # Comment out the following after seeding, only required for making each seed post image unique---
  validates :image, :uniqueness => true
end
