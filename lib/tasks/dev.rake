desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do


 station1 = Station.new
 station1.destination = "loop"
 station1.eta = "5mins"
 station1.line ="brn"
 station1.name = "belmont"
 station1.run_number = 3
 station1.save


end
 