class Follow < ApplicationRecord
    belongs_to :follower, foreign_key: "pokemon_id", class_name: "Pokemon"
    belongs_to :following, foreign_key: "following_id", class_name: "Pokemon"

    

end
