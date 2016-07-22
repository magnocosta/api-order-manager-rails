class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :number
      t.string :reference
      t.string :status
      t.text :notes
      t.float :price

      t.timestamps null: false
    end
  end
end
