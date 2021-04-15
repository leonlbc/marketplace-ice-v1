
client = Client.create!(name: 'Link Sb')
puts("Client #{client.name}")

collection = Collection.create!(name: '2020/2', end_date: DateTime.now.next_day(60), client: client)
puts("Collection #{collection.name}")


#Roupas com Desconto
[['Camiseta Branca Link', 80.0],
 ['Camiseta Preta Link',80.0]].each do |p|
  p_name = p[0]
  price = p[1]

  product = Product.create!(name: p_name, collection: collection, price: price)
  puts("Product |#{p_name}: #{price}| Created")

  ["P", "M", "G", "XG"].each do |size|
    Size.create!(letter: size, product: product)
    puts("Size |#{size}| Created for Product #{p_name}")
  end
end

#Roupas sem Desconto
[['Crewneck Link Azul Marinho', 150],
 ['Hoodie Branco Link',170],
 ['Corta-Vento Link',220]].each do |p|
  p_name = p[0]
  price = p[1]

  product = Product.create!(name: p_name, collection: collection, price: price)
  puts("Product |#{p_name}: #{price}| Created")

  ["P", "M", "G", "XG"].each do |size|
    Size.create!(letter: size, product: product)
    puts("Size |#{size}| Created for Product #{p_name}")
  end
end

