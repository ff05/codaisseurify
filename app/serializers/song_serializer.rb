class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :album, :release_year

  belongs_to :artist
end
