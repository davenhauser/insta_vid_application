class AddAttachmentVideouploadToVideos < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.attachment :videoupload
    end
  end

  def self.down
    remove_attachment :videos, :videoupload
  end
end
