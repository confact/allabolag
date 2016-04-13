require 'rails_helper'

RSpec.describe CompaniesController, type: :routing do
  describe 'routing' do
    it 'routes to #search' do
      expect(get: '/').to route_to('companies#search')
    end

    it 'routes to #result' do
      expect(post: '/companies/result').to route_to('companies#result')
    end
  end
end
