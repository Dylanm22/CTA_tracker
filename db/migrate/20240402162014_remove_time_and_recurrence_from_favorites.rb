class RemoveTimeAndRecurrenceFromFavorites < ActiveRecord::Migration[7.0]
  def change
    remove_column :favorites, :time, :time
    remove_column :favorites, :recurrence, :string
  end
end
