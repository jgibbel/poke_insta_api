class Post < ApplicationRecord
  belongs_to :pokemon
  has_many :likes, dependent: :destroy
  # Comment out the following after seeding, only required for making each seed post image unique---
  validates :image, :uniqueness => true


  def likes_count
    self.likes.size
  end

end
