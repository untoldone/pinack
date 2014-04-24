json.array!(@projects) do |project|
  json.extract! project, :id, :name, :billing_method, :rate
  json.url project_url(project, format: :json)
end
