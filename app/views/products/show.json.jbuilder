json.product do
  json.call(@product, :id, :name, :size, :quantity, :reference, :value)
  json.image @product.image.url
end
