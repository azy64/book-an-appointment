class Doctor < ApplicationRecord
  has_belongs :address
  has_many :reservations
end
