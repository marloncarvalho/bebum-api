module API
  module V1
    class Cervejas < Grape::API

      resources :cervejas do
        get do
          'Lista de Cervejas.'
        end
      end

    end
  end
end