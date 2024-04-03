desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  # User.create(email: 'alice@example.com', password: 'password', username: 'Alice')
  # User.create(email: 'bob@example.com', password: 'password', username: 'Bob')
   #User.create(email: 'dylan@example.com', password: 'password',)

   Station.create(name:'Kimball')
  # user = User.first
  # station = Station.first

  # NotificationTime.create(user: user, station: station, recurrence: 'everyday')
end
 