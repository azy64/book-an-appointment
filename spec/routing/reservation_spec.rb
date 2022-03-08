require 'rails_helper'

RSpec.describe ReservationsController, type: :routing do
    describe 'routing' do
        it 'routes to #index' do
            expect(get: '/users/1/reservations').to route_to('reservations#index', user_id: '1')
        end
         # it 'routes to #new' do
        #   expect(get: '/doctors/new').to route_to('doctors#new')
        # end
        it 'routes to #show' do
            expect(get: '/users/1/reservations/1').to route_to('reservations#show', id: '1', user_id: '1')
        end
        it 'routes to #edit' do
            expect(patch: '/users/1/reservations/1').to route_to('reservations#update', id: '1', user_id: '1')
        end
        it 'routes to #create' do
            expect(post: '/users/1/reservations').to route_to('reservations#create', user_id: '1')
        end
        it 'routes to #update via PUT' do
            expect(put: '/users/1/reservations/1').to route_to('reservations#update', id: '1', user_id: '1')
        end
        it 'routes to #destroy' do
            expect(delete: '/users/1/reservations/1').to route_to('reservations#destroy', id: '1', user_id: '1')
        end
    end
end