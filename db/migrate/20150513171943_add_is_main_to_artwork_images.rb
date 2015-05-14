class AddIsMainToArtworkImages < ActiveRecord::Migration
  def change
    add_column :artwork_images, :is_main, :boolean
  end
end
