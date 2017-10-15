class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # def current_user
  # 	if devise_controller?
  # 		@current_user = super
  # 	else
  # 		@current_user ||= super || Guest.new
  # 	end
  # end


 	protected

	def after_sign_in_path_for(resource)
		user_path(current_user)
	end

	def after_sign_up_path_for(resource)
		user_path(current_user) #your path
	end
end
