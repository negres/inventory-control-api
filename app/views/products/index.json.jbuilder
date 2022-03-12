json.products do
  json.array!(@products) do |product|
    json.call(product, :id, :name, :size, :quantity, :reference, :value)
    json.image product.image.url
  end
end
