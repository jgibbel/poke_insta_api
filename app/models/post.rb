class Post < ApplicationRecord
  belongs_to :pokemon
  has_many :likes, dependent: :destroy
  # Uncomment the following for seeding unique images, comment out after seeding, only required for making each seed post image unique---
  # validates :image, :uniqueness => true


  def likes_count
    self.likes.size
  end

end
