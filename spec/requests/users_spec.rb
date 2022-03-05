require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users' do
    it 'works! (now write some real specs)' do
      get users_path
      expect(response).to have_http_status(200)
    end
  end
  describe 'POST /users' do
    context 'with valid parameters' do
      let(:create_attributes) do
        { name: 'mikel', email: 'saidi64@gmail.com',
          password: 'xxxxxx', phone_number: '1234567890' }
      end
      it 'renders a successful response' do
        post '/users', params: create_attributes, as: :json
        expect(response).to be_successful
      end
    end
    context 'with invalid parameters' do
      let(:invalid_create_attributes) do
        { name: 'mikel', email: 'saidi64@gmail.com',
          password: 'xxxxxx', phone_number: '' }
      end
      it 'doesn\'t create a new user without a name' do
        post '/users', params: { name: '', email: 'saidi64@gmail.com',
                                 password: 'xxxxxx', phone_number: '' }, as: :json
        expect(response).to have_http_status(200)
      end
    end
  end
end
