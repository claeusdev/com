class UsersController < ApplicationController
  def show
  	@user = User.friendly.find(params[:id])
  end

  def index
  	@users = User.all
  end
  
end
