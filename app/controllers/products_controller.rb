class ProductsController < ApplicationController
	
	def dashboard
		
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			respond_to do |format|
				format.js 
			end
		end
	end



	private

	def set_store
		@store = Store.friendly.find(params[:store_id])
	end

	def set_product
		set_store
	 	@product = @store.products.friendly.find(params[:id])
	end
end
