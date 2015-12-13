class AddUserIdToPosts < ActiveRecord::Migration
  def change
	add_column :pedidos, :iduser, :integer
  end
end
