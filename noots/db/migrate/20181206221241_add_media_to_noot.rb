class AddMediaToNoot < ActiveRecord::Migration[5.1]
  def change
    add_column :noots, :media, :float
  end
end
