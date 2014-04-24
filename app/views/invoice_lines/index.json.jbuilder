json.array!(@invoice_lines) do |invoice_line|
  json.extract! invoice_line, :id, :task, :notes, :cost, :units
  json.url invoice_line_url(invoice_line, format: :json)
end
