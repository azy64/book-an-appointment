require 'rails_helper'

RSpec.describe 'Doctors', type: :request do
  describe 'GET /doctors' do
    it 'works! (now write some real specs)' do
      get doctors_path
      expect(response).to have_http_status(200)
    end
  end
  let(:json) { JSON.parse(response.body) }

  before :each do
    @doctor = Doctor.create!(
      name: 'Aladdin Miler',
      email: 'aladdin@gmail.com',
      picture: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1435027890l/37298.jpg'
    )
  end

  let(:index_request) { get doctors_url, as: :json }
  let(:show_request) { get doctor_url(@doctor), as: :json }
  let(:create_request) do
    post doctors_url,
         params: {
           name: 'Aristote Miler',
           email: 'aristote@gmail.com',
           picture: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1435027890l/37298.jpg'
         },
         as: :json
  end
  let(:delete_request) { delete doctor_url(@doctor), as: :json }
  let(:update_request) do
    put doctors_url(@doctor),
        params: {
          name: 'AZARIA SAIDI',
          email: 'azaria@gmail.com',
          picture: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1435027890l/37298.jpg'
        },
        as: :json
  end

  describe '/doctors#index' do
    it 'should return a successful response' do
      index_request
      expect(response).to be_successful
      expect(response).to have_http_status(200)
    end

    it 'should show information about all books' do
      index_request
      expect(json[0].size).to eq(2)
      expect(json[0]['doctor']['name']).to eq('Aladdin Miler')
      expect(json[0]['doctor']['email']).to eq('aladdin@gmail.com')
    end
  end

  describe '/doctors#show' do
    it 'should return a successful response' do
      show_request
      expect(response).to have_http_status(200)
      expect(response).to be_successful
    end

    it 'should show information about a single doctor' do
      show_request
      expect(json['doctor']['name']).to eq('Aladdin Miler')
    end
  end

  describe '/doctors#create' do
    it 'should return a created response' do
      create_request
      expect(response).to have_http_status(201)
    end

    # it 'should show information about the doctor created' do
    #   expect { create_request }.to change { Book.count }.from(1).to(2)
    #   expect(json['data']['title']).to eq('The Punisher')
    #   expect(json['data']['author']).to eq('Stan Lee')
    # end
  end

  describe '/doctors#delete' do
    it 'should return a successful response' do
      delete_request
      expect(response).to have_http_status(200)
    end

    it 'should show a message when response is successful' do
      delete_request
      expect(json['message']).to eq('Doctor successfully deleted')
    end

    it 'should show information about the book deleted' do
      expect { delete_request }.to change { Doctor.count }.from(1).to(0)
      expect(json['user']['name']).to eq('Aladdin Miler')
      expect(json['user']['email']).to eq('aladdin@gmail.com')
    end
  end

  # describe 'api/books#update' do
  #   it 'should return a created response' do
  #     update_request
  #     expect(response).to have_http_status(201)
  #   end

  #   it 'should show information about the book updated' do
  #     update_request
  #     expect(json['data']['name']).to eq('Aladdin Miler')
  #     expect(json['data']['email']).to eq('aladdin@gmail.com')
  #   end
  # end
end
