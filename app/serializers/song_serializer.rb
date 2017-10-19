class SongSerializer < ActiveModel::Serializer
  attributes :name, :album, :release_year

  belongs_to :artist
end
