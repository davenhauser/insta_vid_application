class User < ActiveRecord::Base
  has_many :videos
  has_many :comments

  has_secure_password

  validates :username, presence:true, uniqueness: true, length: { maximum: 30}
  validates :email, presence:true, uniqueness: true
end
