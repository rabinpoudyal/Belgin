class ShopsController < ApplicationController

	before_action :set_shop, except: [:new,:create, :index, :catalog]
	before_action :verify_owner, only: [:edit,:update]
	#before_action :only_one_shop_with_free_account, only: [:create,:new]


	layout 'layouts/application.html.erb'
	layout 'layouts/storelayout.html.erb', only: [:show, :catalog]

	def index
	end

	def new
		@shop = Shop.new
	end

	def create
		@shop = Shop.new(shop_params)
		@shop.user_id = current_user.id
		if @shop.save
			flash[:notice] = "You have successfully created your first shop"
			redirect_to @shop
		else
			flash[:error] = "You cannot create a shop"
			redirect_to @shop
		end
	end

	def show
		@products = @shop.products.all
		@featured_products = Product.where(:is_featured => true).limit(4)
		@owner = User.find(@shop.user_id)
	end

	def edit
	end

	def update
		if @shop.update_attributes(shop_params)
			redirect_to shop_path
			flash[:notice] = "Changes updated successfully"
		else
			redirect_to shop_path
			flash[:alert] = "Something went wrong"
		end
	end

	def catalog
		@shop = current_user.shop
		@products = Product.where(:shop_id => current_user.shop.id)
		@categories = Category.where(:shop_id => current_user.shop.id)
	end

	def about
		@location = current_user.shop.location
	end

	def refund_policy
		@refund = current_user.shop.refund_policy
	end

	def privacy_policy
		@privacy = current_user.shop.privacy_policy
	end

	private 

	def shop_params
		params.require(:shop).permit(:name, :description, :location, :img_url, :cover_img_url, :phone, :subdomain)
	end

	def set_shop
		@shop = Shop.friendly.find(params[:id])
	end

	def verify_owner
		if user_signed_in?
			if @shop.user_id == current_user.id
				return true
			else
				return false
			end
		end
	end

	def only_one_shop_with_free_account
		if current_user.shop.present?
			redirect_to dashboard_path
			flash[:alert] = "You cannot create multiple shops with free account"
		end
	end

end