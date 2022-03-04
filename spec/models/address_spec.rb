require 'rails_helper'

RSpec.describe Address, type: :model do
  subject do
    Address.new(city: 'London', state: 'Orleans', country:
    'England', street: '9 rue de Bourge 45000')
  end
  it 'a Address should has a valid state, city, country and street' do
    expect(subject).to be_valid
    subject.city = ''
    expect(subject).to_not be_valid
    subject.country = nil
    expect(subject).to_not be_valid
    subject.street = nil
    expect(subject).to_not be_valid
  end
end
