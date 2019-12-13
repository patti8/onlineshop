class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :description
      t.integer :rating
      t.integer :price

      t.timestamps 
    end
  end
end
