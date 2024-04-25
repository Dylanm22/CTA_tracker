# # To deliver this notification:
# #
# # NewScheduleNotifier.with(record: @post, message: "New post").deliver(User.all)

# class NewScheduleNotifier < ApplicationNotifier
#   dieliver_by :email, mailer: TaskMailer, method: new_schedule_notifier
#   param :user, :notification_time
  
#   # deliver_by :email do |config|
#   #   config.mailer = "UserMailer"
#   #   config.method = "new_post"
#   # end
#   #
#   # bulk_deliver_by :slack do |config|
#   #   config.url = -> { Rails.application.credentials.slack_webhook_url }
#   # end
#   #
#   # deliver_by :custom do |config|
#   #   config.class = "MyDeliveryMethod"
#   # end

#   # Add required params
#   #
#   # required_param :message
# end
