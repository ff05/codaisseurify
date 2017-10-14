class Artist < ApplicationRecord
  has_many :songs

  mount_uploader :image_url, ImageUploader
end
