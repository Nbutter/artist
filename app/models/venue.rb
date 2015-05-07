class Venue < ActiveRecord::Base
  has_many :exhibitions
  has_many :artworks, through: :exhibitions
end
