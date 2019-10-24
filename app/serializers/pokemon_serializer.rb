class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :species, :image, :dataId
  has_many :follows 
  has_many :posts
  has_many :followers
end
