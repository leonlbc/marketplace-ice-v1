class DeletePriceFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :price, :decimal
  end
end
