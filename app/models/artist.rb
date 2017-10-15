class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  mount_uploader :image_url, ImageUploader

  validates :name, presence: true
  validates :image_url, presence: true
  validates_length_of :image_url, maximum: 255
end
