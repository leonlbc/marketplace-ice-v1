class AddDescToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :desc, :string
  end
end
