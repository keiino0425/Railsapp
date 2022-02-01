class Reserve < ApplicationRecord
    belongs_to :room

    validates :startdate, presence: true
    validates :enddate, presence: true
    validates :people, presence: true
end
