class ChangeInttoString < ActiveRecord::Migration[5.2]
  def self.up
    change_column :items, :width, :string
    change_column :items, :height, :string
    change_column :items, :rabbet, :string
  end

  def self.down
    change_column :items, :width, :integer
    change_column :items, :height, :integer
    change_column :items, :rabbet, :integer
  end
end
