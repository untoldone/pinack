json.array!(@payments) do |payment|
  json.extract! payment, :id, :date, :amount, :invoice, :company, :client
  json.url payment_url(payment, format: :json)
end
