class CreateDiscounts < ActiveRecord::Migration[6.0]
  def change
    create_table :discounts do |t|
      t.string :name
      t.timestamps
    end
    add_monetize :discounts, :price, currency: { present: false }
  end
end
