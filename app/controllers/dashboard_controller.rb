class DashboardController < ApplicationController
	before_action :set_shop

	layout 'dashboardlayout'

	def index
		#@shop_name = current_user.shop.name
		#@products_count = Product.all.count
		#@orders_count = Order.all.count
		#@shop = current_user.shop
	end

	def orders
		@orders = Order.where(:shop_id => current_user.shop.id)
	end

	def products
		@products = Product.where(:shop_id => current_user.shop.id)
	end

	def categories
		@categories = Category.where(:shop_id => current_user.shop.id)
	end

	def articles
		@articles = @shop.articles.where(:shop_id => @shop.id)
	end

	def statistics

	end

	def themes

	end

	def deals
		@deals = Deal.all
	end

	def customers

	end

	def campaign

	end

	def preferences
		preferences = params[:theme_color]
		current_user.shop.settings.theme_color = preferences
		current_user.shop.settings.save
	end

	private

	def set_shop
		@shop = current_user.shop
		@article = Article.new
	end

end