class Category < ApplicationRecord
	has_and_belongs_to_many :products, lambda { order(:created_at => :desc) }

	belongs_to :parent, :class_name => 'Category', :optional => true
	has_many :subcategories, :class_name => 'Category', :foreign_key => 'parent_id'

end
