module ProductsHelper

	def like_link(product)
		if user_signed_in?
			if current_user.liked?(product)
				link_to "Unlike", unlike_store_product_path(product), method: :delete
			else
				link_to "Like", like_store_product_path(product), method: :post
			end
		end
	end
	
end
