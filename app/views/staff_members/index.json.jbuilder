json.array!(@staff_members) do |staff_member|
  json.extract! staff_member, :id, :email, :first_name, :last_name, :rate, :phone, :username, :password
  json.url staff_member_url(staff_member, format: :json)
end
