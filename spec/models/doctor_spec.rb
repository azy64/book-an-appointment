require 'rails_helper'

RSpec.describe Doctor, type: :model do
  subject do
    doctor = Doctor.new(
      name: 'Aristote Miler',
      email: 'aristote@gmail.com',
      picture: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1435027890l/37298.jpg'
    )

    return doctor
  end

  describe 'Validations for Doctor Model' do
    it 'A doctor should have a valid name' do
      expect(subject).to be_valid
      subject.name = ''
      expect(subject).to_not be_valid
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end
end
