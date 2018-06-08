class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :shop
  validate :limit_products_creation, :on => :create
  has_and_belongs_to_many :categories
  has_many :orders

  is_impressionable

  private

  def limit_products_creation
  	if shop.products.count >= 20
  		errors.add(:base, "You can add only 20 products with free account.")
  		return false
  	else
  		return true
  	end
  end
end
