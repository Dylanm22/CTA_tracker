class TaskMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.task_mailer.task_created.subject
  #
  def notification(user, notification_time)
    @user = user
    @notification_time = notification_time
    mail(to: @user.email, subject: 'Notification')
  end
  end
