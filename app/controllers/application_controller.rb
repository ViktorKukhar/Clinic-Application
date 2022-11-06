class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  add_flash_types :danger, :info, :warning, :success

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:update, keys: [:first_name, :last_name])
  devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
end

end
