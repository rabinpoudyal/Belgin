class OrdersController < ApplicationController

	before_action :validate_before_order
	before_action :get_product, only: [:new,:create]

	layout 'layouts/storelayout.html.erb'

	def new
		@order = Order.new

	end

	def create
		@order = Order.new(order_params)
		@order.user_id = @user.id
		@order.product_id = @product.id
		@order.shop_id = @shop.id
		if @order.save
			redirect_to thankyou_path
			flash[:notice] = "Your order has been successfully recieved. Please wait till we respond"
		else
			flash[:alert] = "Your order could not be placed"
			render 'new'
		end
	end

	def show
		@order = Orders.find(params[:id])
	end

	def destroy

	end

	private

	def order_params
		params.require(:order).permit(:state, :description, :user_id, :product_id, :quantity, :shipping_address, :phone )
	end

	def validate_before_order
		unless user_signed_in?
			redirect_to new_user_session_path
			flash[:alert] = "Please sign in or register before ordering product"
		else
			@user = current_user
		end
	end

	def get_product
		@product = Product.friendly.find(params[:product_id])
		@shop = current_user.shop
	end

end
