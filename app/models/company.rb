class Company < ActiveRecord::Base
  has_many :invoices
  has_many :clients
  has_many :projects
  has_many :expenses
  has_many :invoices
  has_many :staff_members
  has_many :payments
end
