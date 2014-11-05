# encoding: UTF-8

module API

  module V2

    class Base < Grape::API
      version 'v2', :using => :header, :vendor => 'alienlabz', :format => :json
      format :json
    end

  end

end
