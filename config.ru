$:.unshift "./app"

require 'rack/cors'

require 'rubygems'
require 'grape'
require 'rack'
require 'grape-entity'
require 'data_mapper'
require 'api/base.rb'

DataMapper.setup(:default, 'mysql://serpro:serpro@db/bebumapi')
DataMapper::auto_migrate!
DataMapper::finalize

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :put, :delete, :options, :patch]
  end
end

run API::Base
