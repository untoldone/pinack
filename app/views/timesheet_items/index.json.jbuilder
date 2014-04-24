json.array!(@timesheet_items) do |timesheet_item|
  json.extract! timesheet_item, :id, :date, :hours, :notes, :billed
  json.url timesheet_item_url(timesheet_item, format: :json)
end
