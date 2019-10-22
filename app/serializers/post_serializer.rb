class PostSerializer < ActiveModel::Serializer
  attributes :image, :caption, :pokemon_id, :created_at, :likes_count
  has_many :likes
end
