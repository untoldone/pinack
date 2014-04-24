json.array!(@contacts) do |contact|
  json.extract! contact, :id, :email, :first_name, :last_name, :phone
  json.url contact_url(contact, format: :json)
end
