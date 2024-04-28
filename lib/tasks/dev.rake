desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  NotificationTime.destroy_all
  Favorite.destroy_all
  Station.destroy_all 
  User.destroy_all

  User.create(email: 'alice@example.com', password: 'password')

  Station.create(name: 'Kimball', map: 41290)
  Station.create(name: 'Kedzie', map: 41180)
  Station.create(name: 'Francisco', map: 40870)
  Station.create(name: 'Rockwell', map: 41010)
  Station.create(name: 'Western', map: 41480)
  Station.create(name: 'Damen', map: 40090)
  Station.create(name: 'Montrose', map: 41500)
  Station.create(name: 'Irving Park', map: 41460)
  Station.create(name: 'Addison', map: 41440)
  Station.create(name: 'Paulina', map: 41310)
end
