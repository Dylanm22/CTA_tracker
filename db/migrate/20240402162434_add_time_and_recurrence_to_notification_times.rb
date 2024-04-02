class AddTimeAndRecurrenceToNotificationTimes < ActiveRecord::Migration[7.0]
  def change
    add_column :notification_times, :time, :time
    add_column :notification_times, :recurrence, :string
  end
end
