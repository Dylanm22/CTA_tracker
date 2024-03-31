class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.integer :run_number
      t.string :line
      t.string :destination
      t.string :eta

      t.timestamps
    end
  end
end
