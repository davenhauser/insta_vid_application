class Video < ActiveRecord::Base



   belongs_to :user
   has_many :comments


  has_attached_file :videoupload, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :videoupload, content_type: /\Aimage\/.*\Z/


   validates :video_link, uniqueness: true, presence: true, length: { is: 11 }
   validates :title, presence: true



   def youtube_link
    "https://youtu.be/#{self.video_link}"
  end

   def embed_link
     "https://www.youtube.com/embed/#{self.video_link}"
   end

  def self.iterate_every(step, starting=0)
   every = all
   total = every.length - 1
   (starting..total).step(step) { |i| yield every[i] }
 end
end
