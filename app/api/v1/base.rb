# encoding: UTF-8

require 'api/v1/cervejas'
require 'api/v1/tipos'
require 'models/model'
require 'api/v1/entities/entity'

module API

  module V1

    class Base < Grape::API
      version 'v1', :using => :header, :vendor => 'alienlabz', :format => :json

      mount API::V1::Cervejas => '/'
      mount API::V1::Tipos => '/'
    end

  end

end
