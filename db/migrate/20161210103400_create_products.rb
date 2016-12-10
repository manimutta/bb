class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :unit_price
      t.integer :available_quantity
      t.timestamps null: false
    end
  end
end
