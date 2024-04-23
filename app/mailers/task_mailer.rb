class TaskMailer < ApplicationMailer
  
  
  def notification(user, notification_time)
    @user = user
    @notification_time = notification_time
    mail(to: @user.email, subject: 'Notification Sign Up')
  end
  
   
  def scheduled_notification(user, notification_time)
     @user = user
     
     @notification_time = notification_time
     
     arrivals = StationArrivals.new(@notification_time.station)
     @arrivals = arrivals.get_arrivals

     mail(to: @user.email, subject: 'HeyCTA Notification')
  end
  
  
  end
   
