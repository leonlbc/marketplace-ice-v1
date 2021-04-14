class AddReferencesToSizes < ActiveRecord::Migration[6.0]
  def change
    add_reference :sizes, :products
  end
end
