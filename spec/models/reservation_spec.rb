require 'rails_helper'

RSpec.describe Reservation, type: :model do
  subject do
    user = User.new(name: 'Azaria', email: 'allysaidi64@gmail.com', password:
      'xxxxxy890', phone_number: '0934278456')
    doctor = Doctor.new(
      name: 'Aristote Miler',
      email: 'aristote@gmail.com',
      picture: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1435027890l/37298.jpg'
    )
    Reservation.create!(
      reservation_time: DateTime.strptime('09/14/2009 8:00', '%m/%d/%Y %H:%M'),
      user: user,
      doctor: doctor
    )
  end

  describe 'Validations for Reservation Model' do
    it 'should be a valid reservation' do
      expect(subject).to be_valid
    end

    it 'should be invalid if city column is blank' do
      subject.reservation_time = nil
      expect(subject).to_not be_valid
    end

    it 'should be invalid if city string is more than 250 characters' do
      subject.reservation_time = 'c' * 251
      expect(subject).to_not be_valid
    end

    it 'should be invalid if reservation_date is blank' do
      subject.reservation_time = ''
      expect(subject).to_not be_valid
    end

    it 'should be invalid if reservation_date is in wrong format' do
      subject.reservation_time = '09/14/2022 13:09:48'
      expect(subject).to_not be_valid
      subject.reservation_time = 14
      expect(subject).to_not be_valid
    end
  end
end
