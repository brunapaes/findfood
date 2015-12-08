class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :numero
      t.string :valor

      t.timestamps null: false
    end
  end
end
