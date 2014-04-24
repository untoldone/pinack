class Invoice < ActiveRecord::Base
  has_one :company
  has_many :invoice_lines
end
