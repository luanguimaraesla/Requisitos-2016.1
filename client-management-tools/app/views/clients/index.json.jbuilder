json.array!(@clients) do |client|
  json.extract! client, :id, :name, :cpf, :phonenumber, :description, :company
  json.url client_url(client, format: :json)
end
