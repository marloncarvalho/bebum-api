# encoding: UTF-8

require 'api/v1/base'
require 'api/v2/base'

module API

  class Base < Grape::API
    mount API::V1::Base
    mount API::V2::Base
  end

end
