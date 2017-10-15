class LikesController < ApplicationController
	def create
		current_user.like(product)
 		redirect_to store_product_path(store, product) 
	end

	def destroy
		current_user.unlike(product)
		redirect_to store_product_path(store, product)
	end


	private

	def product
		@_product ||= Product.friendly.find(params[:id])
	end

	def store
		product
		store = product.store
	end
end