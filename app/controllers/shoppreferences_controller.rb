class ShoppreferencesController < ApplicationController
	before_action :find_user_and_shop

	def settings
		preferences = params[:theme_color]
		puts preferences
	end

	private

	def find_user_and_shop
		if user_signed_in?
			@user = current_user
			if @user.shop.present? 
				@shop = @user.shop
				return
			else
				redirect_to dashboard_path
				return
			end
		else
			redirect_to new_user_session_path
			return
		end
	end

end