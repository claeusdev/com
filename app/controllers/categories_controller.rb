class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def show
		@category = Category.friendly.find(params[:id])
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(cat_params)
		if @category.save
			respond_to do |f|
				f.html { redirect_to @category, notice: 'Category created succesfully!!'}
			end
		else
			render :new
		end
	end


	private

	def cat_params
		params.require(:category).permit(:name, :avatar)
	end
end
