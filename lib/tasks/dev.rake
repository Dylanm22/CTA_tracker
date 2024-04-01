desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  # User.create(email: 'alice@example.com', password: 'password', username: 'Alice')
  # User.create(email: 'bob@example.com', password: 'password', username: 'Bob')
  # User.create(email: 'cameron@example.com', password: 'password', username: 'Cameron')

  Station.create(name:'Montrose',run_number: 1,line: 'Brown', destination: 'Kimball', eta: '9:20')
end
 