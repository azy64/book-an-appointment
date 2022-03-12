class Doctor < ApplicationRecord
  validates :name, presence: { message: 'You must fill in your name' }
  validates :email, presence: { message: 'email field cannot be left blank' }

  has_many :doctor_addresses
  has_many :reservations

  def self.return_doctors_adresses
    @doctors = Doctor.all
    i = 0
    @doctors_hash = []
    while i < @doctors.length
      doctor_hash = {}
      doctor_hash['doctor'] = @doctors[i]
      doctor_hash['address'] = Address.find_by(doctor_addresses: @doctors[i].doctor_addresses)
      @doctors_hash.push(doctor_hash)
      i += 1
    end
    @doctors_hash
  end

  def self.return_doctor_adress(doctor)
    @doctor_hash = {}
    @doctor_hash['doctor'] = doctor
    @doctor_hash['address'] = Address.find_by(doctor_addresses: doctor.doctor_addresses)
    @doctor_hash
  end
end
