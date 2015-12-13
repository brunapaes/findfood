class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :nome
      t.string :tipo

      t.timestamps null: false
    end
  end
end
