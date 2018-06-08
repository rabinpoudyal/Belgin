class MainController < ApplicationController

	def index

	end

	def search
		render :json => { products: [], categories: [] }
	end

end