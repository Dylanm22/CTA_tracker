class Task < ApplicationRecord
  belongs_to :user
  after_create :send_notification_email

  private

  def send_notification_email
    message = 'This is a notification message.'
    TaskMailer.notification(user, message).deliver_now
  end
end
