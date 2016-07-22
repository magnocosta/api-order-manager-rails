class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :sku
      t.integer :unit_price
      t.integer :quantity
      t.belongs_to :order

      t.timestamps null: false
    end
  end
end
