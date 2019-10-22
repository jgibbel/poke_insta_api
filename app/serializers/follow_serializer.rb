class FollowSerializer < ActiveModel::Serializer
  attributes :species, :image, :pokemon_id, :following_id, :posts
end
