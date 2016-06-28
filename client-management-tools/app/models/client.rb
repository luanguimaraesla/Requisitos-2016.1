class Client < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders

  # Attach a profile picture to an user
  has_attached_file :profile_picture, :styles => {}, :default_url => "missing_profile_picture.jpg"
  validates_attachment_content_type :profile_picture, :content_type => /\Aimage\/.*\Z/
end
