class Exhibition < ActiveRecord::Base
  has_many :artworks
  belongs_to :venue
end
