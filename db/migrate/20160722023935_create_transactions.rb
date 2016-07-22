class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :external_id
      t.integer :amount
      t.string :type
      t.string :authorization_code
      t.string :card_brand
      t.string :card_bin
      t.string :card_last
      t.belongs_to :order

      t.timestamps null: false
    end
  end
end
