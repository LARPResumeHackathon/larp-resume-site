class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:display_name])
    devise_parameter_sanitizer.permit(:edit, keys: [:display_name, :about_me])
  end
end
