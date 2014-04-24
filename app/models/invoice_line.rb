class InvoiceLine < ActiveRecord::Base
  has_one :company
  has_one :invoice
end
