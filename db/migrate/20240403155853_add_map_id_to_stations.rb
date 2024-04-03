class AddMapIdToStations < ActiveRecord::Migration[7.0]
  def change
    add_column :stations, :map_id, :integer
  end
end
