class PagesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def about
  end

  def contact
  end

  def blog
    
  end

  def careers
    
  end
end
