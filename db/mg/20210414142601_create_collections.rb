class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.string :name
      t.references :client
      t.datetime :end_date

      t.timestamps
    end
  end
end
