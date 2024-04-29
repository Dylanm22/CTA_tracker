require 'httparty'

class StationArrivals
  def initialize(station)
    @station = station
  end

  def get_arrivals
    api_key = ENV["CTA_KEY"].strip
    num = @station.map
    response = HTTParty.get("http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=#{api_key}&mapid=#{num}&outputType=JSON")
    stops = JSON.parse(response.body)['ctatt']['eta']

    arrivals = []
    stops.each do |stop|
      arrivals.push({
        name: stop['staNm'],
        run_number: stop['rn'],
        line: stop['rt'],
        destination: stop['destNm'],
        eta: stop['arrT']
      })
    end
    return arrivals
  end
end
