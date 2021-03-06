class ApplicationController < ActionController::Base
	before_action :authenticate_user!

	def after_sign_in_path_for(resourse)
		homes_index_path
	end

	add_flash_types :info, :error, :warning

	before_action :configure_permitted_parameters, if: :devise_controller?

	private
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
	end
end
