class RenameNameColumnToFName < ActiveRecord::Migration
  def change
    rename_column :user2s, :name, :fname
  end
end
