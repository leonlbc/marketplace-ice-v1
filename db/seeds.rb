# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

client = Client.create!(name: 'Link Sb')
puts("Client #{client.name}")

collection = Collection.create!(name: '2020/2', end_date: DateTime.now.next_day(60), client: client)
puts("Collection #{collection.name}")

[['Camiseta IceXSb', 20.50], ['Corta-Vento Link',120.50]].each do |p|
  p_name = p[0]
  price = p[1]

  product = Product.create!(name: p_name, collection: collection, price: price)
  puts("Product |#{p_name}: #{price}| Created")

  ["P", "M", "G", "XG"].each do |size|
    Size.create!(letter: size, product: product)
    puts("Size |#{size}| Created for Product #{p_name}")
  end
end

