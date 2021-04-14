class DeleteProductsFromSize < ActiveRecord::Migration[6.0]
  def change
    remove_reference :sizes, :products
  end
end
