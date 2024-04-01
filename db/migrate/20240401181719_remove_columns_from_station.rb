class RemoveColumnsFromStation < ActiveRecord::Migration[7.0]
  def change
    remove_column :stations, :run_number, :integer
  end
end
