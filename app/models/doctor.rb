class Doctor < ApplicationRecord
  validates :name, presence: { message: 'You must fill in your name' }
  validates :email, presence: { message: 'email field cannot be left blank' }

  has_many :doctor_addresses
  has_many :reservations
end
