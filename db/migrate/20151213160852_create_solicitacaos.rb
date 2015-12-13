class CreateSolicitacaos < ActiveRecord::Migration
  def change
    create_table :solicitacaos do |t|
      t.integer :numero
      t.float :valor
      t.references :comida, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
