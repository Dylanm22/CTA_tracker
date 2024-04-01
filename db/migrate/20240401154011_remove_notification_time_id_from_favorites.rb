class RemoveNotificationTimeIdFromFavorites < ActiveRecord::Migration[7.0]
  def change
    remove_reference :favorites, :notification_time, null: false, foreign_key: true
  end
end
