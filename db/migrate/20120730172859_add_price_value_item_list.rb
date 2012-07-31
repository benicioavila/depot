class AddPriceValueItemList < ActiveRecord::Migration
  def up
  	Product.all.each do |product|
  		id = product.id
  		items = LineItem.where(:product_id => id)
	   	items.each do |item|
		  	item.update_column(:price ,product.price)
		  end
	 end
  end

  def down
  end
end

