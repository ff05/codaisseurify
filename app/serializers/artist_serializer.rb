class ArtistSerializer < ActiveModel::Serializer
  attributes :name, :bio, :image_url

  has_many :songs
end
