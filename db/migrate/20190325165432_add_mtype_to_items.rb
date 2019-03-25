class AddMtypeToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :mtype, :string
  end
end
