json.array!(@clients) do |client|
  json.extract! client, :id, :org_name, :country, :address, :address_line_two, :city, :state, :phone, :fax
  json.url client_url(client, format: :json)
end
