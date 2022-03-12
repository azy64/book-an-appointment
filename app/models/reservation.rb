class Reservation < ApplicationRecord
  validates :reservation_time, presence: { message: 'You must fill in your name' }

  belongs_to :user
  belongs_to :doctor

  def self.return_user_doctor_reservation
    @reservations = Reservation.all
    @reservation_hash = []
    i = 0
    while i < @reservations.length
      resevation = {}
      resevation['user'] = User.find_by(id: @reservations[i].user)
      resevation['doctor'] = Doctor.find_by(id: @reservations[i].doctor)
      resevation['reservation'] = @reservations[i]
      @reservation_hash.push(resevation)
      i += 1
    end
    @reservation_hash
  end

  def self.return_reservation_from(reservation)
    @reservation_hash = {}
    @reservation_hash['user'] = User.find_by(id: reservation.user)
    @reservation_hash['doctor'] = Doctor.find_by(id: reservation.doctor)
    @reservation_hash['reservation'] = reservation
    @reservation_hash['address'] = Address.find_by(doctor_addresses: reservation.doctor.doctor_addresses)
    @reservation_hash
  end
end
