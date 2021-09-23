FactoryBot.define do
  factory :simple_product do
    nombre { "MyString" }
    costo { 1.5 }
    precio { 1.5 }
    utilidad { 1.5 }
    cantidad { 1 }
  end
end
