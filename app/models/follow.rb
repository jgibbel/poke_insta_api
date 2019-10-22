class Follow < ApplicationRecord
    belongs_to :follower, foreign_key: "pokemon_id", class_name: "Pokemon"
    belongs_to :following, foreign_key: "following_id", class_name: "Pokemon"
    validates :following_id, uniqueness: {scope: :pokemon_id, message: "can only be followed once by this Pokemon"}
    validates :following_id, exclusion: { in: [:pokemon_id], message: "cannot follow him/herself"}

    def posts
        following.posts.map do |post|
            PostSerializer.new(post).to_h
            # post.attributes.merge({likes_count: post.likes.size})
        end
    end

    def species
        Pokemon.find(following_id).species
    end

    def image
        Pokemon.find(following_id).image
    end
end
