class NotificationTimesController < ApplicationController
  before_action :set_notification_time, only: %i[ show edit update destroy ]
  before_action {authorize (@notification_time || NotificationTime)}
  # GET /notification_times or /notification_times.json
  def index
    @notification_times = NotificationTime.all
  end

  # GET /notification_times/1 or /notification_times/1.json
  def show
  end

  # GET /notification_times/new
  def new
    @notification_time = NotificationTime.new
  end

  # GET /notification_times/1/edit
  def edit
  end

  # POST /notification_times or /notification_times.json
  def create
    @notification_time = NotificationTime.new(notification_time_params)
    @notification_time.user_id = current_user.id
    favorite = Favorite.find_by(id: params[:favorite_id])

  if favorite
    @notification_time.station_id = favorite.station_id
  else
  end
    respond_to do |format|
      if @notification_time.save
        format.html { redirect_to favorites_path, notice: "Notification time was successfully created." }
        format.json { render :show, status: :created, location: @notification_time }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @notification_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notification_times/1 or /notification_times/1.json
  def update
    respond_to do |format|
      if @notification_time.update(notification_time_params)
        format.html { redirect_to favorites_path, notice: "Notification time was successfully updated." }
        format.json { render :show, status: :ok, location: @notification_time }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @notification_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notification_times/1 or /notification_times/1.json
  def destroy
    @notification_time.destroy
    respond_to do |format|
      format.html { redirect_to favorites_path, notice: "Notification time was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notification_time
      @notification_time = NotificationTime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def notification_time_params
      params.require(:notification_time).permit(:user_id, :time, :recurrence, :station_id)
    end
end
