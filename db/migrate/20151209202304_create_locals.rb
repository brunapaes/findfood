class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.decimal :elevacao

      t.timestamps null: false
    end
  end
end
