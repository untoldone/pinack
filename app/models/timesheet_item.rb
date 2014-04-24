class TimesheetItem < ActiveRecord::Base
  has_one :company
  has_one :client
  has_one :project
end
