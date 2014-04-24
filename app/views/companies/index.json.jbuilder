json.array!(@companies) do |company|
  json.extract! company, :id, :name, :country, :address, :address_line_two, :city, :state, :zip_code, :email, :phone, :fax
  json.url company_url(company, format: :json)
end
