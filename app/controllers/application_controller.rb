class ApplicationController < ActionController::Base
layout :layout_by_resource
before_action :configure_permitted_parameters, if: :devise_controller?


private
    def layout_by_resource
        if devise_controller? && resource_name == :user && action_name == "new"
          "sessions"
        else
          "application"
        end
    end
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:login, :password, :password_confirmation])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :password_confirmation, :current_password])
    end
end
