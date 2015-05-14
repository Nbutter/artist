class Artwork < ActiveRecord::Base
  has_many :artwork_images
  belongs_to :exhibition

  
end
