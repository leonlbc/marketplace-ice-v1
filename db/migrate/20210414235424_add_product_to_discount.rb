class AddProductToDiscount < ActiveRecord::Migration[6.0]
  def change
    add_reference :discounts, :products
  end
end
