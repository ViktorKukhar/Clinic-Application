class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:update, keys: [:first_name, :last_name])
  devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
end

def after_sign_in_path_for(resource)
  if resource.is_a?(User)
    profile_path(current_user)
  elsif resource.is_a?(Doctor)
    root_path
  else
   root_path
  end
end
end
