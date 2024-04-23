namespace :slurp do
  task :stations => :environment do
    Station.destroy_all
    User.destroy_all
    Favorite.destroy_all
    Station.create(name: 'Monstrose', map: 41500)
  end
end
