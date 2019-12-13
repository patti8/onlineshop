class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.text :address
      t.string :city
      t.string :country
      t.integer :shipping_costs
      t.bigint :total_price
      t.timestamps
    end
  end
end
