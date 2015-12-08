class CreateCadastros < ActiveRecord::Migration
  def change
    create_table :cadastros do |t|
      t.string :nome
      t.string :email
      t.string :senha

      t.timestamps null: false
    end
  end
end
