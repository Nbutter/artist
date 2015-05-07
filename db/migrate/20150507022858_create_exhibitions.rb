class CreateExhibitions < ActiveRecord::Migration
  def change
    create_table :exhibitions do |t|
      t.integer :venue_id
      t.string :title
      t.string :subtitle
      t.string :exhibition_type
      t.string :press_url
      t.string :curator
      t.string :start_month
      t.string :finish_month
      t.integer :year
      t.string :exhibition_image_url
      t.string :exhibition_image_url2

      t.timestamps null: false
    end
  end
end
