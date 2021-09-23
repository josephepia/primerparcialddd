require 'rails_helper'

RSpec.describe DirectProduct, type: :model do
  
  describe "HU1 entrada de produtos" do
    context "la cantidad de la entrada debe ser mayor a 0" do
      

      #escenario de exito 
      #DADO que se crea un producto directo
      #CUANDO tiene una cantidad de 2 
      #ENTONCES el resultado espera es "registrado exitosamente"
      it "cantidad producto debe ser mayor que cero" do
        #dado
        productoDirecto  = DirectProduc.new()

        #cuando
        productoDirecto.cantidad = 2
      
        respuesta = productoDirecto.registrar()

        #entonces
        expect(respuesta).to  eq("egistrado exitosamente") 

      end

      #escenario de error
      #DADO que se crea un producto directo
      #CUANDO tiene una cantidad de 0 
      #ENTONCES el resultado espera es "cantidad incorrecta"
      it "cantidad producto no puede ser menor o igual que cero" do
          #dado
          productoDirecto  = DirectProduc.new()

          #cuando
          productoDirecto.cantidad = 0
        
          respuesta = productoDirecto.registrar()
  
          #entonces
          expect(respuesta).to  eq("cantidad incorrecta") 
      end
    end
  end
  
end
