class UsersController < ApplicationController
	before_action :take_current_user



	def show
		@products = Product.all
	end

	def dashboard
		@shop = @user.shop
	end

	def dashboard_orders
		@products = @user.shop.products		
		@orders = Order.where(:shop_id => @user.shop.id)
	end

	private

	def take_current_user
		if user_signed_in?
			@user = current_user
		else
			redirect_to new_user_session_path
			return
		end
	end

end	