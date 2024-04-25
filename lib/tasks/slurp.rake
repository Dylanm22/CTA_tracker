namespace :slurp do
  task :stations => :environment do
   Station.destroy_all 
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
   Station.create(name: 'Southport', map: 40360)
   Station.create(name: 'Belmont', map: 41320)
   Station.create(name: 'Wellington', map: 41210)
   Station.create(name: 'Diversey', map: 40530)
   Station.create(name: 'Fullerton', map: 41220)
   Station.create(name: 'Armitage', map: 40660)
   Station.create(name: 'Sedgwick', map: 40800)
   Station.create(name: 'Chicago', map: 40710)
   Station.create(name: 'Merchandise Mart', map: 40460)
   Station.create(name: 'Clark/Lake', map: 40380)
   Station.create(name: 'Washington/Wells', map: 40730)
   Station.create(name: 'Quincy', map: 40040)
   Station.create(name: 'Harold Washington Library-State/Van Buren', map: 40850)
   Station.create(name: 'State/Lake', map: 40260)
  end
end
