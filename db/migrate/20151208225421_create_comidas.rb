class CreateComidas < ActiveRecord::Migration
  def change
    create_table :comidas do |t|
      t.string :nome
      t.string :tipo
      t.float :valor

      t.timestamps null: false
    end
  end
end
