class CreateInputProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :input_products do |t|
      t.string :nombre
      t.float :costo
      t.float :precio
      t.float :utilidad
      t.integer :cantidad

      t.timestamps
    end
  end
end
