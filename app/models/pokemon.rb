class Pokemon < ApplicationRecord

    has_many :follows, -> {order(following_id: :asc)}, dependent: :destroy

    has_many :follower_relationships, foreign_key: :following_id, class_name: "Follow"
    has_many :followers, through: :follower_relationships, source: :follower 

    has_many :following_relationships, foreign_key: :pokemon_id, class_name: "Follow"
    has_many :following, through: :following_relationships, source: :following

    has_many :posts, dependent: :destroy
    has_many :likes, dependent: :destroy
end
