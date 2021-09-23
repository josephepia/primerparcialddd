class Product < ApplicationRecord
    attr_accessor :nombre, :costo, :precio, :utilidad, :cantidad

    def self.inherited(subclass)
        super
        @@productos = []
        
    end


    

     self.abstract_class = true

    private
        def registrar
            
        end

        def sacar
            
        end
end
