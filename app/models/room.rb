class Room < ApplicationRecord
    mount_uploader :roomimage, RoomimageUploader
    has_many :reservations

    validates :roomname, presence: true
    validates :roominfo, presence: true
    validates :price, presence: true
    validates :address, presence: true
    validates :roomimage, presence: true
end
