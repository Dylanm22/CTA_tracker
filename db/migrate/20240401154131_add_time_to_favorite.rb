class AddTimeToFavorite < ActiveRecord::Migration[7.0]
  def change
    add_column :favorites, :time, :time
  end
end
