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

  private

  def send_notification_email
    user = User.find(user_id)
     TaskMailer.notification(user, self).deliver_now
  end
  
  # test one working right now needs to deliver later at the specified time 
  
  # def send_notification_email
  #    user = User.find(user_id)
  #    TaskMailer.scheduled_notification(user, self).deliver_now
  # end


end
