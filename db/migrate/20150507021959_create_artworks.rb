class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.integer :year_started
      t.integer :year_completed
      t.integer :exhibition_id
      t.string :mediums
      t.integer :height
      t.integer :width
      t.integer :depth

      t.timestamps null: false
    end
  end
end
