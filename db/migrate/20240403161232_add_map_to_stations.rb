class AddMapToStations < ActiveRecord::Migration[7.0]
  def change
    add_column :stations, :map, :integer
  end
end
