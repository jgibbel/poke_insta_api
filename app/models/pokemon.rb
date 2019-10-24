class Pokemon < ApplicationRecord

    has_many :follows, dependent: :destroy

    has_many :follower_relationships, foreign_key: :following_id, class_name: "Follow"
    has_many :followers, through: :follower_relationships, source: :follower 

    has_many :following_relationships, foreign_key: :pokemon_id, class_name: "Follow"
    has_many :following, through: :following_relationships, source: :following

    has_many :posts, dependent: :destroy
    has_many :likes, dependent: :destroy

    def sorted_follows
        return self.follows.sort_by{|follow| follow.following_id}
            .map do |f| 
                FollowSerializer.new(f).to_h
            end         
    end

end
