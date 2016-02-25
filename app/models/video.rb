class Video < ActiveRecord::Base



   belongs_to :user
   has_many :comments


   validates :video_link, uniqueness: true, presence: true, length: { is: 11 }
   validates :title, presence: true

  def vine_link
    "https://vine.co/v/#{self.video_link}"
  end

   def embed_link
     "https://vine.co/v/#{self.video_link}/embed/simple"
   end

  def self.iterate_every(step, starting=0)
   every = all
   total = every.length - 1
   (starting..total).step(step) { |i| yield every[i] }
 end
end
