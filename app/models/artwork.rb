class Artwork < ActiveRecord::Base
  has_many :artwork_images
  belongs_to :exhibition

  def main_image
    @artwork_images.to_a[0]
  end

  
end
