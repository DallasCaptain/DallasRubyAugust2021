class AddAdminColumnToUser2 < ActiveRecord::Migration
  def change
    add_column :user2s, :admin, :boolean
  end
end
