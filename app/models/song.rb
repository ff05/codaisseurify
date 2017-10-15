class Song < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true
  validates :album, presence: true
  validates_inclusion_of :release_year, in: 1..2017
end
