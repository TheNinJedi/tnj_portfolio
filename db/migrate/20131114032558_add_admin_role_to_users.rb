class AddAdminRoleToUsers < ActiveRecord::Migration
  def up
    add_column :users, :is_ninjedi, :boolean, default: false
  end

  def down
    remove_column :users, :is_ninjedi
  end
end
