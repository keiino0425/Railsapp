class User < ApplicationRecord
  mount_uploader :userimage, UserimageUploader

  with_options on: :profile do
    validates :username, presence: true
    validates :userimage, presence: true
    validates :userinfo, presence: true
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
