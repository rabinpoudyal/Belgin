class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def after_sign_up_path_for(resource)
  	dashboard_path
	end

  def after_sign_in_path_for(resource)
    dashboard_path
  end


	def configure_permitted_parameters
		 devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :is_seller, :username, :address, :city, :country, :terms_and_conditions])
	   devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :is_seller])
	end
end
