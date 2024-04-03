class RemoveFavoritesIdFromNotificationTimes < ActiveRecord::Migration[7.0]
  def change
    remove_column :notification_times, :favorites_id, :integer
  end
end
