class Shop < ApplicationRecord
	include RailsSettings::Extend
	extend FriendlyId
    friendly_id :name, use: :slugged
	
	has_many :products, dependent: :destroy
	belongs_to :user
	has_many :articles, dependent: :destroy
	
end