require 'rails_helper'

RSpec.describe Company, type: :model do
  describe 'validations' do
    it 'create valid company' do
      company = create(:company)
      expect(company).to be_a(Company)
    end
    it 'create invalid company' do
      company = build(:company, orgnr: '4421-4324')
      company.valid?
      expect(company.errors[:orgnr]).to eq(['is invalid'])
    end
  end
end
