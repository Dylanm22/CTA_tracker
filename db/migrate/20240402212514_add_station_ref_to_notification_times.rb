class AddStationRefToNotificationTimes < ActiveRecord::Migration[7.0]
  def change
    add_reference :notification_times, :station, null: false, foreign_key: true
  end
end
