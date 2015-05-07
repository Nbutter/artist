class CreateArtworkImages < ActiveRecord::Migration
  def change
    create_table :artwork_images do |t|
      t.string :description
      t.string :shot_type
      t.integer :artwork_id
      t.string :image_url

      t.timestamps null: false
    end
  end
end
