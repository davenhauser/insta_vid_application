class Video < ActiveRecord::Base
   validates :video_link, uniqueness: true, presence: true, length: { is: 11 }
   validates :title, presence: true

   def youtube_link
    "https://youtu.be/#{self.video_link}"
  end

   def embed_link
     "https://www.youtube.com/embed/#{self.video_link}"
   end
end
