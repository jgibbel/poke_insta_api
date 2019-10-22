class PokemonSerializer < ActiveModel::Serializer
  attributes :species, :image, :dataId
  has_many :posts
  has_many :follows
  has_many :followers
  has_many :following
end
