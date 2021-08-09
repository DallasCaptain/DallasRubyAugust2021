class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.references :record, index: true, foreign_key: true
      t.references :buyer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
