class Reservation < ApplicationRecord
    belongs_to :room
    belongs_to :user

    validates :startdate, presence: true
    validates :enddate, presence: true
    validates :people, presence: true
end
