class PostSerializer < ActiveModel::Serializer
    attributes :image, :caption, :pokemon_id, :created_at
    has_many :likes
end