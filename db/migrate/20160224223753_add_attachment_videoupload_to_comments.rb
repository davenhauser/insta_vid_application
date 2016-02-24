class AddAttachmentVideouploadToComments < ActiveRecord::Migration
  def self.up
    change_table :comments do |t|
      t.attachment :videoupload
    end
  end

  def self.down
    remove_attachment :comments, :videoupload
  end
end
