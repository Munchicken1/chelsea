class AddIndexToCat < ActiveRecord::Migration[5.2]
  def change
    add_index :items, :category
  end
end
