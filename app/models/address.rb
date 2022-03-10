class Address < ApplicationRecord
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: { message: 'phone_number field cannot be left blank' }
  validates :street, presence: { message: 'password field cannot be left blank' }

  has_many :doctor_addresses
end
