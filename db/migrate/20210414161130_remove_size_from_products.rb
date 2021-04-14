class RemoveSizeFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_reference :products, :size, null: false, foreign_key: true
  end
end
