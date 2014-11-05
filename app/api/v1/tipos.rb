module API

  module V1

    class Tipos < Grape::API

      resources :tipos do

        # Obter uma lista de Tipos de Cervejas
        get do
          tipo = Models::Tipo.new
          tipo.id = 1
          tipo.nome = 'Pilsen'

          [tipo]
        end

      end

    end

  end

end