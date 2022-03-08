require 'rails_helper'

RSpec.describe ReservationsController, type: :routing do
    describe 'routing' do
        it 'routes to #index' do
            expect(get: '/users/1/reservations').to route_to('reservations#index', user_id: '1')
        end
         # it 'routes to #new' do
        #   expect(get: '/doctors/new').to route_to('doctors#new')
        # end
    end
end