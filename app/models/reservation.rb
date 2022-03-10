class Reservation < ApplicationRecord
  validates :reservation_time, presence: { message: 'You must fill in your name' }

  belongs_to :user
  belongs_to :doctor
end
