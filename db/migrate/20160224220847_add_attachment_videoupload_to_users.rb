class AddAttachmentVideouploadToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :videoupload
    end
  end

  def self.down
    remove_attachment :users, :videoupload
  end
end
