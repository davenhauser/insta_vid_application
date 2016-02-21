class Video < ActiveRecord::Base
   validates :video_link, uniqueness: true, presence: true
   validates :title, presence: true
   def embed_link
     "https://youtu.be/#{self.video_link}"
   end
end
