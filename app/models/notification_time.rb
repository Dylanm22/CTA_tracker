# == Schema Information
#
# Table name: notification_times
#
#  id           :integer          not null, primary key
#  recurrence   :string
#  time         :time
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  favorites_id :integer          not null
#
# Indexes
#
#  index_notification_times_on_favorites_id  (favorites_id)
#
# Foreign Keys
#
#  favorites_id  (favorites_id => favorites.id)
#
class NotificationTime < ApplicationRecord
  belongs_to :user
end
