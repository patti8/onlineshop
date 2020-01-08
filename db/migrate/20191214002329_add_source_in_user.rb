class AddSourceInUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :source, :bigint
  end
end
