require 'httparty'
class StationsController < ApplicationController
  before_action :set_station, only: %i[ show edit update destroy ]

  # GET /stations or /stations.json
  def index
    @stations = Station.all
    api_key = ENV["CTA_KEY"].strip
     num = 41500
     response = HTTParty.get("http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=#{api_key}&mapid=#{num}&outputType=JSON")
     data = JSON.parse(response.body)['ctatt']['eta']
 
     data.each do |arrival|
       CtaArrival.create(
         station_name: arrival['staNm'],
         run_number: arrival['rn'],
         line: arrival['rt'],
         destination: arrival['destNm'],
         eta: Time.at(arrival['arrT'].to_i)
       )
     end
 
     @cta_arrivals = CtaArrival.all
   end
    # @stations = Station.all
    # api_key = ENV["CTA_KEY"].strip
    # @all_maps = []
    # num = 41500
    # 1.times.each do 
    #   @first_resp = HTTP.get("http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=#{api_key}&mapid=#{num}&outputType=JSON")
    #   num = num + 10 
    #   first_raw = @first_resp.to_s
    #   first_parsed = JSON.parse(first_raw)
  
    #   response = first_parsed
    #   @all_maps.append(response)
  #  end
  end

  # GET /stations/1 or /stations/1.json
  def show
  end

  # GET /stations/new
  def new
    @station = Station.new
  end

  # GET /stations/1/edit
  def edit
  end

  # POST /stations or /stations.json
  def create
    @station = Station.new(station_params)

    respond_to do |format|
      if @station.save
        format.html { redirect_to station_url(@station), notice: "Station was successfully created." }
        format.json { render :show, status: :created, location: @station }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stations/1 or /stations/1.json
  def update
    respond_to do |format|
      if @station.update(station_params)
        format.html { redirect_to station_url(@station), notice: "Station was successfully updated." }
        format.json { render :show, status: :ok, location: @station }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stations/1 or /stations/1.json
  def destroy
    @station.destroy

    respond_to do |format|
      format.html { redirect_to stations_url, notice: "Station was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_station
      @station = Station.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def station_params
      params.require(:station).permit(:name, :run_number, :line, :destination, :eta)
    end
# end
