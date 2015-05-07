class Exhibition < ActiveRecord::Base
  has_many :artworks
  has_many :artwork_images, through: :artworks
  belongs_to :venue
end
