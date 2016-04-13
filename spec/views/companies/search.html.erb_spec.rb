require 'rails_helper'

RSpec.describe 'companies/search', type: :view do
  before(:each) do
    assign(:company, build(:company))
  end
  it 'renders a input for name of company' do
    render
    assert_select 'form[action="/companies/result"][method="post"]' do
      assert_select 'input#company_name[name=?]', 'company[name]'
    end
  end
end
