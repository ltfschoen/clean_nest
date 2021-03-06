class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :phone_number, :hourly_rate, :location, :gender, :language, :bio, :password, :image, :identification, :latitude, :longitude, :active])
  end
end
