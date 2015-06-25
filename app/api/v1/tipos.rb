module API

  module V1

    class Tipos < Grape::API

      resources :tipos do

        get do
          present Models::Tipo.all, :with => Entities::Tipo
        end

        get ':id' do
          present Models::Tipo.get!(params[:id]), :with => Entities::Tipo
        end

        post do
          tipo = Models::Tipo.new
          tipo.nome = params[:nome]
          tipo.save

          present tipo, :with => Entities::Tipo
        end

        put ':id' do
          tipo = Models::Tipo.get! params[:id]
          tipo.nome = params[:nome]
          tipo.save

          present tipo, :with => Entities::Tipo
        end

        delete ':id' do
          status 204
          Models::Tipo.get!(params[:id]).destroy!
        end

      end

    end

  end

end