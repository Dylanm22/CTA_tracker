namespace :slurp do
  task :stations => :environment do
    Station.create(name: 'Monstrose', map: 41500)
  end
end
