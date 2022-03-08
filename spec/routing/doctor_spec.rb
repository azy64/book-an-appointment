require 'rails_helper'

RSpec.describe DoctorsController, type: :routing do
  describe 'routing' do
      it 'routes to #index' do
        expect(get: '/doctors').to route_to('doctors#index')
      end
        # it 'routes to #new' do
        #   expect(get: '/doctors/new').to route_to('doctors#new')
        # end  
      it 'routes to #show' do
        expect(get: '/doctors/1').to route_to('doctors#show', id: '1')
      end
      it 'routes to #edit' do
        expect(get: '/doctors/1/edit').to route_to('doctors#edit', id: '1')
      end
  end
end