class CreateNotificationTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :notification_times do |t|
      t.references :user, null: false, foreign_key: true
      t.time :time
      t.string :recurrence

      t.timestamps
    end
  end
end
