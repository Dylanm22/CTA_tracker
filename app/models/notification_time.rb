# == Schema Information
#
# Table name: notification_times
#
#  id         :integer          not null, primary key
#  recurrence :string
#  time       :time
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_notification_times_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class NotificationTime < ApplicationRecord
  belongs_to :user
end
