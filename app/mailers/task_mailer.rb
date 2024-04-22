class TaskMailer < ApplicationMailer
  
  
  def notification(user, notification_time)
    @user = user
    @notification_time = notification_time
    mail(to: @user.email, subject: 'Notification')
  end
  
   
  def scheduled_notification(user, notification_time, api_data)
    @user = user
    @notification_time = notification_time
    @api_data = api_data
    @station = Station.find_by(map_id: notification_time.station_id)
    mail(to: @user.email, subject: 'Notification')
  end
  
  
  end
