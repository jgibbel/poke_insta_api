class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :species, :image, :dataId, :sorted_follows
  has_many :posts
  has_many :followers
end
