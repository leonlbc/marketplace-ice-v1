# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

client = Client.create!(name: 'Link Sb')

collection = Collection.create!(name: '2020/2', end_date: nil, client: client)

product = Product.create!(name: 'Camiseta IceXSb', collection: collection, price: 20.50)

sizes = ["P", "M", "G", "XG"]
sizes.each do |size|
  Size.create!(type: size, product: product)
end
