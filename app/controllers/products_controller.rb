class ProductsController < ApplicationController
  before_action :set_product, only: [:edit,:update,:show, :destroy]
  before_action :set_user, only: [:create, :edit, :update, :destroy]
  before_action :set_shop


  def index
    @products = Product.all.order(created_at: :desc).limit(12)
  end

  def new
    @product = Product.new
    respond_to do |format|
      format.html { render :layout => 'dashboardlayout' }
    end
  end

  def create
    @product = Product.new(product_params)
    @product.shop_id = current_user.shop.id
    if @product.save
      redirect_to shop_product_path(current_user.shop,@product)
      flash[:notice] = "Product added successfully"
    else
      redirect_to dashboard_path
      flash[:error] = "Could not create a product"
    end
  end

  def show
    @product = Product.friendly.find(@product.id)
    impressionist(@product, :unique => [:session_hash])
    @products = Product.where(:shop_id => @product.shop.id).order(created_at: :desc).limit(3)
    @seller = Shop.find(@product.shop_id)
    respond_to do |format|
      format.html { render :layout => 'storelayout' }
    end
  end

  def edit
  end

  def update
    if @product.update_attributes(product_params)
      redirect_to shop_product_path(@shop, @product)
      flash[:notice] = "Product updated successfully"
    else
      redirect_to product_path(@product)
      flash[:error] = "Could not update product"
    end
  end

  def delete
    
  end

  def destroy
    if @product.destroy
      redirect_to dashboard_path
      flash[:notice] = "Product deleted successfully"
    else
      redirect_to product_path(@product)
      flash[:error] = "Could not delete the product"
    end
  end

  private

  def set_product
    @product = Product.friendly.find(params[:id])
  end

  def set_user
    if user_signed_in?
      @user = current_user
    else
      redirect_to new_user_session_path
    end
  end

  def set_shop
    @shop = current_user.shop
  end

  def product_params
    params.require(:product).permit(:name,:price,:description,:inventory,:img_url, :category_ids, :is_featured )
  end


end
