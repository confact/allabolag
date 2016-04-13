module Api
  class Api < Grape::API
    format :json
    rescue_from :all
    version 'v1', using: :path, vendor: 'App'

    rescue_from ActiveRecord::RecordNotFound do |e|
      error!({ error: e.message }, 404)
    end

    mount V1::Companies

    get do
      api = { info: 'Allabolag API',
              info2: 'This is the root'
      }
      api
    end

    route :any, '*path' do
      error!("Can't find the path", 404)
    end
  end
end
