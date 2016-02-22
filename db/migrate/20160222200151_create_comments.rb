class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :message
      t.integer :video_id

      t.timestamps null: false
    end
  end
end
