require 'rails_helper'

RSpec.describe DirectProduct, type: :model do
  
  describe "HU1 entrada de productos" do
    context "la cantidad de la entrada debe ser mayor a 0" do
      

      #escenario de exito 
      #DADO que se crea un producto directo
      #CUANDO tiene una cantidad de 1 
      #ENTONCES el producto no debe contener mensajes de error
      it "cantidad producto debe ser mayor que cero" do
        #DADO
        productoDirecto  = DirectProduct.new

        #CUANDO
        productoDirecto.cantidad = 1
      

        #ENTONCES 
        should validate_numericality_of(:cantidad).is_greater_than(0) # verificar que la validacion exista en el modelo
        expect(productoDirecto.errors[:cantidad]).to be_empty

      end

      #escenario de error
      #DADO que se crea un producto directo
      #CUANDO tiene una cantidad de -2 
      #ENTONCES el resultado esperado es "must be greater than 0"
      it "cantidad producto no puede ser menor o igual que cero" do
          #DADO
          productoDirecto  = DirectProduct.new

          #CUANDO
          productoDirecto.cantidad = -2
          productoDirecto.save
  
          #ENTONCES 
          should validate_numericality_of(:cantidad).is_greater_than(0) # verificar que la validacion exista en el modelo
          expect(productoDirecto.errors[:cantidad]).to include("must be greater than 0")
      end
    end
  end
  
end
