class FollowSerializer < ActiveModel::Serializer
  attributes :pokemon_id, :following_id, :posts
end
