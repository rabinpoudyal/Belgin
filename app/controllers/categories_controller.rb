class CategoriesController < ApplicationController
	before_action :find_shop

	layout 'layouts/storelayout.html.erb', except: [:new, :edit]
	layout 'layouts/dashboardlayout.html.erb', only: [:new, :edit]

	def index
		@categories = Category.where(:shop_id => @shop.id)
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		@category.shop_id = current_user.shop.id
		if @category.save
			redirect_to shop_categories_path(current_user.shop)
			flash[:notice] = "Successfully added category"
		else
			render '/new'
		end
	end

	def edit

	end

	def update
		@category = Category.find(params[:id])
		if @category.update(category_params)
			redirect_to dashboard_path
			flash[:notice] = "Category Updated Successfully"
		else
			redirect_to dashboard_path
			flash[:error] =  "Could not update category"
		end
	end

	def delete

	end

	def destroy
		@category = Category.find(params[:id])
		if @category.destroy
			flash[:notice] = "Category Deleted successfully"
			redirect_to dashboard_path
		else
			flash[:error] = "Could not delete category"
			redirect_to dashboard_path
		end
	end

	def show

	end

	private

	def category_params
		params.require(:category).permit(:name, :shop_id, :description, :img_url)
	end

	def find_shop
		@shop = Shop.friendly.find(params[:shop_id])
	end

end