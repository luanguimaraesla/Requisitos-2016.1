json.array!(@services) do |service|
  json.extract! service, :id, :name, :code, :price, :category
  json.url service_url(service, format: :json)
end
