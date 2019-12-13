class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :rating
    create_table :reviews do |t|
      t.integer :rating
      t.text :commentar
    end
    add_reference :products, :review, foreign_key: true
    add_reference :reviews, :user, foreign_key: true
  end
end
