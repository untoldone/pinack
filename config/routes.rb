Rails.application.routes.draw do
  resources :payments

  resources :staff_members

  resources :contacts

  resources :timesheet_items
  resources :invoice_lines
  resources :invoices
  resources :projects
  resources :expenses
  resources :companies
  resources :clients

  root to: 'welcome#index'
end
