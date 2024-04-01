class AddFavoritesIdToNotificationTimes < ActiveRecord::Migration[7.0]
  def change
    add_reference :notification_times, :favorites, null: false, foreign_key: true
  end
end
