require 'data_mapper'

module Models

  # Cervejas.
   class Cerveja
     include DataMapper::Resource

     property :id, Serial
     property :nome, String
     belongs_to :tipo
   end

  # Tipos de Cervejas
   class Tipo
     include DataMapper::Resource

     property :id, Serial
     property :nome, String
     has n, :cervejas
   end

end