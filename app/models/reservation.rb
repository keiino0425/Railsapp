class Reservation < ApplicationRecord
    belongs_to :room
    belongs_to :user

    validates :startdate, presence: true
    validates :enddate, presence: true
    validates :people, presence: true
    validate :start_check
    validate :start_end_check

    def start_check
        errors.add(:base, "過去の日付は無効です") if self.startdate < Date.today
    end

    def start_end_check
        errors.add(:base, "終了日は開始日より後にしてください") if self.startdate > self.enddate
    end
end
