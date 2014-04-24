class Payment < ActiveRecord::Base
  has_one :company
  has_one :invoice
  has_one :client
end
