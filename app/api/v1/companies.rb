
module V1
  class Companies < Grape::API
    resource :companies do
      get do
        companies = Company.all
        companies
      end

      post 'find' do
        status 200
        name = params[:name]
        company = Company.where(name: name)
        company
      end
    end
  end
  end
