class NotificationMailer < ApplicationMailer
  def notification_scheduled(user, scheduled_time)
    @user = user
    @scheduled_time = scheduled_time

    mail(to: @user.email, subject: 'Notification Scheduled')
  end
end
