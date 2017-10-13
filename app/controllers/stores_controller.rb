class StoresController < ApplicationController
	before_action :set_store, only: [:show]
	before_action :authenticate_user!, except: [:new, :show]

	def new
		@store = Store.new
		@store.build_user
		@categories = Category.all
	end

	def show
		@products = @store.products
	end

	def dashboard
		@product = Product.new
		@store = Store.friendly.find(params[:store_id])
		@products = @store.products
	end

	def create
		@store = Store.new(store_params)
		@store.user_id = current_user.id
		if @store.save
			respond_to do |format|
				format.html { redirect_to store_dashboard_path(@store), notice: "Store created succesfully!"
}
			end
		else
			render :new, error: @store.errors.full_messages.to_sentence
			Rails.logger.info
		end
	end


	private

	def set_store
		@store = Store.friendly.find(params[:id])
	end

	def store_params
		params.require(:store).permit(:name, :slug, :category_id, :user_id)
	end
end
