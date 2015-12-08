class CreateComidas < ActiveRecord::Migration
  def change
    create_table :comidas do |t|
      t.string :codigo
      t.string :nome
      t.string :tipo
      t.string :preco

      t.timestamps null: false
    end
  end
end
