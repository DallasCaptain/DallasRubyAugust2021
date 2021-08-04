class CreateRecordBuyers < ActiveRecord::Migration
  def change
    create_table :record_buyers do |t|
      t.references :record, index: true, foreign_key: true
      t.references :buyer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
