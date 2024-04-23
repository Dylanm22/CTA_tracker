namespace :slurp do
  task :stations => :environment do
    Station.create(name: 'Irving Park', map: 41460)
    Station.create(name: 'Southport', map: 40360)
    Station.create(name: 'Kimball', map: 41290)
  end
end
