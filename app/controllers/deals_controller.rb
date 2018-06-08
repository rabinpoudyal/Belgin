class DealsController < ApplicationController


	def new
		@deal = Deal.new
	end

	def create
		@deal = Deal.new(deal_params)
		if @deal.save
			redirect_to deals_path
			flash[:notice] = "Deal was successfully created"
		else
			redirect_to deals_path
			flash[:error] = "Deal could not created"
		end
	end

	def edit

	end

	def update

	end

	def destroy

	end

	private

      def deals_params
      	params.require(:deal).permit(:start, :end, :percentage, :condition, :product_id)
      end

  end