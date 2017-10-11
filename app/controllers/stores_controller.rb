class StoresController < ApplicationController
	before_action :set_store, only: [:show]

	def new
		@store = Store.new
		@store.build_user
	end

	def show
		
	end

	def dashboard
		@product = Product.new
		@store = Store.find(params[:store_id])
	end

	def create
		@store = Store.new(store_params)
		if @store.save
			redirect_to store_dashboard_path(@store), notice: "Store created succesfully!"
		else
			render :new, error: @store.errors.full_messages.to_sentence
		end
	end


	private

	def set_store
		@store = Store.find(params[:id])
	end

	def store_params
		params.require(:store).permit(:name, user_attributes: [:id, :email, :password, :password_confirmation])
	end
end
