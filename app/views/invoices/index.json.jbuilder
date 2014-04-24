json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :number, :date_of_issuer, :note
  json.url invoice_url(invoice, format: :json)
end
