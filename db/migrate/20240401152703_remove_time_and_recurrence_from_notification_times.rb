class RemoveTimeAndRecurrenceFromNotificationTimes < ActiveRecord::Migration[7.0]
  def change
    remove_column :notification_times, :time, :time
    remove_column :notification_times, :recurrence, :string
  end
end
