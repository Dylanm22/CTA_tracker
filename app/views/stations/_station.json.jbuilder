json.extract! station, :id, :name, :run_number, :line, :destination, :eta, :created_at, :updated_at
json.url station_url(station, format: :json)
