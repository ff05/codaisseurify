class Song < ApplicationRecord
  YEAR = Date.today.year
  RELEASE_YEAR = 1300..YEAR
  belongs_to :artist

  validates :name, presence: true
  validates :album, presence: true
  validates_inclusion_of :release_year, in: RELEASE_YEAR

  def self.sort_by_year
    order :release_year
  end
end
