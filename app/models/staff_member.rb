class StaffMember < ActiveRecord::Base
  has_one :company
end
