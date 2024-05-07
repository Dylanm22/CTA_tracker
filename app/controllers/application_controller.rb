class ApplicationController < ActionController::Base
  include Pundit::Authorization
  after_action :verify_authorized, unless: :skip_authorization_check?
  after_action :verify_policy_scoped, only: :index, unless: :skip_authorization_check?
  skip_forgery_protection

  private
  # nice!
  def skip_authorization_check?
    devise_controller? || station_controller? ||cover_controller?
  end

  def station_controller?
    controller_name == "stations"
  end

  def cover_controller?
    controller_name == "cover"
  end

end
