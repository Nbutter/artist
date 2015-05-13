class ArtworkImage < ActiveRecord::Base
  belongs_to :artwork, counter_cache: true
end
