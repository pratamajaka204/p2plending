class AddColumnIdUserToRole < ActiveRecord::Migration
  def change
  	add_column :roles, :id_user, :integer
  end
end
