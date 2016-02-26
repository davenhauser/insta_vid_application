class Comment < ActiveRecord::Base
  belongs_to :author, class_name: "User", foreign_key: "author_id"
  belongs_to :video

  has_attached_file :videoupload, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :videoupload, content_type: /\Aimage\/.*\Z/
end
