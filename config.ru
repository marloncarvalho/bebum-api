$:.unshift "./app"

require 'rack/cors'

require 'rubygems'
require 'grape'
require 'rack'
require 'grape-entity'

require 'api/base.rb'

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :put, :delete, :options, :patch]
  end
end

run API::Base