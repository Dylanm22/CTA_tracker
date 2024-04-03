class RemoveMapIdFromStations < ActiveRecord::Migration[7.0]
  def change
    remove_column :stations, :map_id, :integer
  end
end
