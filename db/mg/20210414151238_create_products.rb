class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.references :collection, null: false, foreign_key: true
      t.references :size, null: false, foreign_key: true

      t.timestamps
    end
  end
end
