require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'mike4234', email: 'allysaidi@gmail.com', password:
    'xxxxxx890', phone_number: '0934278456')
  end
  it 'that a user has a valid name' do
    expect(subject).to be_valid
    subject.name = ''
    expect(subject).to_not be_valid
    subject.phone_number = nil
    expect(subject).to_not be_valid
  end
end
