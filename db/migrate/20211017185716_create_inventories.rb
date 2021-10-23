class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.string :manufacturer
      t.string :model
      t.string :color
      t.string :carrier_plan_type
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
  end
end
