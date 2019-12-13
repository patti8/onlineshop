class AddRefToOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :address
    remove_column :orders, :city
    remove_column :orders, :country
    remove_reference :orders, :users, foreign_key: true
    remove_reference :orders, :products, foreign_key: true
    add_reference :orders, :user, foreign_key: true
    add_reference :orders, :product, foreign_key: true
  end
end
