class Pokemon < ApplicationRecord
    has_many :posts 
    has_many :likes
    has_many :follows 

    has_many :follower_relationships, foreign_key: :following_id, class_name: "Follow"
    has_many :followers, through: :follower_relationships, source: :follower 

    has_many :following_relationships, foreign_key: :pokemon_id, class_name: "Follow"
    has_many :following, through: :following_relationships, source: :following

end
