class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :city
      t.string :country
      t.string :website_url
      t.string :image_url
      t.string :image_url2

      t.timestamps null: false
    end
  end
end
