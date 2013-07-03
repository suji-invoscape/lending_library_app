class Address < ActiveRecord::Migration
  def up
    change_column :users, :address, :text
  end

  def down
    change_column :users, :address, :string
  end
end
