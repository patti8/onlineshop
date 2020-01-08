class AddStripTokenInUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :stripeToken, :text
  end
end
