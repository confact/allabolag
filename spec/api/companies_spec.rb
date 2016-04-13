require 'rails_helper'

RSpec.describe V1::Companies do
  describe 'GET /api/v1/companies' do
    it 'returns an empty array of companies' do
      get '/api/v1/companies'
      expect(response.status).to eq 200
      expect(JSON.parse(response.body)).to eq([])
    end
    it 'returns an array of 1 company' do
      create(:company)
      get '/api/v1/companies'
      expect(response.status).to eq 200
      expect(JSON.parse(response.body).size).to eq 1
    end
  end
  describe 'POST /api/v1/companies/find' do
    it 'returns an array of 1 company' do
      create(:company)
      post '/api/v1/companies/find', name: 'ApoEx AB'
      expect(response.status).to eq 200
      expect(JSON.parse(response.body).first['orgnr']).to eq '556633-4149'
    end
  end
end
