class Doctor < ApplicationRecord
  has_many :doctor_addresses
  has_many :reservations
end
