class Users::RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_parameters

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :username])
        devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :avatar, :username])
    end
end