require 'rails_helper'

RSpec.describe DoctorsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/doctors').to route_to('doctors#index')
    end
    # it 'routes to #new' do
    #   expect(get: '/doctors/new').to route_to('doctors#new')
    # end
  end
end
