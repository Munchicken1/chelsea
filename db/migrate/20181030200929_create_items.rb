class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :color
      t.integer :width
      t.integer :height
      t.integer :rabbet
      t.integer :pcs
      t.integer :ft
      t.string :type
      t.string :img_url

      t.timestamps
    end
  end
end
