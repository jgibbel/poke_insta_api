class FollowSerializer < ActiveModel::Serializer
  attributes :following_name, :image, :pokemon_id, :following_id, :posts
end
