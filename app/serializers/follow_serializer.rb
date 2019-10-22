class FollowSerializer < ActiveModel::Serializer
  attributes :following_name, :pokemon_id, :following_id, :posts
end
