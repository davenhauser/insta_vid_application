class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :video_link
      t.string :tags
      t.date :filmed_when
      t.string :filmed_where

      t.timestamps null: false
    end
  end
end
