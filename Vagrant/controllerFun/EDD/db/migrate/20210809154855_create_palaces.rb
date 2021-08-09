class CreatePalaces < ActiveRecord::Migration
  def change
    create_table :palaces do |t|
      t.string :model
      t.float :price

      t.timestamps null: false
    end
  end
end
