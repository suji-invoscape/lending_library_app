class DropUsersRoles < ActiveRecord::Migration
   def up
    drop_table :users_roles 
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
