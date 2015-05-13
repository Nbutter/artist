class AddArtworkImagesCountToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :artwork_images_count, :integer
  end
end
