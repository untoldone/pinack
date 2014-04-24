json.array!(@expenses) do |expense|
  json.extract! expense, :id, :amount, :date, :vendor, :category, :notes
  json.url expense_url(expense, format: :json)
end
