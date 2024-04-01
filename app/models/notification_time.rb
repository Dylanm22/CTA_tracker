# == Schema Information
#
# Table name: notification_times
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  favorites_id :integer          not null
#  user_id      :integer          not null
#
# Indexes
#
#  index_notification_times_on_favorites_id  (favorites_id)
#  index_notification_times_on_user_id       (user_id)
#
# Foreign Keys
#
#  favorites_id  (favorites_id => favorites.id)
#  user_id       (user_id => users.id)
#
class NotificationTime < ApplicationRecord
  belongs_to :user
end
