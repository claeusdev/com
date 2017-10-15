class AddStuff < ActiveRecord::Migration[5.1]
  def change
  	add_column :stores, :description, :text
  	add_column :products, :stock, :integer 
  end
end
