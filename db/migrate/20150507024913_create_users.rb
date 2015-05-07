class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email_address
      t.string :password_digest
      t.boolean :is_admin

      t.timestamps null: false
    end
  end
end
