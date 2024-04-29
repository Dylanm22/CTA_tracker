# == Schema Information
#
# Table name: notification_times
#
#  id         :integer          not null, primary key
#  recurrence :string
#  time       :time
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  station_id :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_notification_times_on_station_id  (station_id)
#  index_notification_times_on_user_id     (user_id)
#
# Foreign Keys
#
#  station_id  (station_id => stations.id)
#  user_id     (user_id => users.id)
#
class NotificationTime < ApplicationRecord
  belongs_to :user
  belongs_to :station
  
  after_create :send_notification_email
  after_create :send_info_email
  private

  def send_notification_email
    user = User.find(user_id)
     TaskMailer.notification(user, self).deliver_now
  end
  
  def wait_time_minutes
    current_time_minutes = Time.now.hour * 60 + Time.now.min
    notification_time_minutes = time.hour * 60 + time.min
    wait_time_minutes = notification_time_minutes - current_time_minutes
    wait_time_minutes += 1440 if wait_time_minutes.negative?
    wait_time_minutes
  end
  
  def send_info_email
    user = User.find(user_id) 
    TaskMailer.scheduled_notification(user, self).deliver_later(wait: wait_time_minutes.minutes)
  end


end
