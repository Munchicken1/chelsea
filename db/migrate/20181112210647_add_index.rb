class AddIndex < ActiveRecord::Migration[5.2]
  def change
    add_index :items, :name
    add_index :items, :color
    add_index :items, :width
    add_index :items, :height
    add_index :items, :rabbet
    add_index :items, :condition
  end
end
