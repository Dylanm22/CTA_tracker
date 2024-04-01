class RemoveColumnsFromStations < ActiveRecord::Migration[7.0]
  def change
    remove_column :stations, :run, :integer
    remove_column :stations, :line, :string
    remove_column :stations, :destination, :string
    remove_column :stations, :eta, :string
  end
end
