# encoding: utf-8

module Entities

  class Cerveja < Grape::Entity
    expose :id
    expose :nome
    expose :tipo
  end

  class Tipo < Grape::Entity
    expose :id
    expose :nome
  end

end
