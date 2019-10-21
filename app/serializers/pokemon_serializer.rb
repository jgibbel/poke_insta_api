class PokemonSerializer < ActiveModel::Serializer
  attributes :species, :image, :dataId
  has_many :posts
  has_many :follows
  has_many :likes
end
