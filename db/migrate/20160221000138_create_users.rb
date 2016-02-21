class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :profile_img_url
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
