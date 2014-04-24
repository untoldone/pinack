class CreateInitialTables < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :org_name
      t.string :country
      t.string :address
      t.string :address_line_two
      t.string :city
      t.string :state
      t.string :phone
      t.string :fax
      
      t.references :company

      t.timestamps
    end
    
    create_table :contacts do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :phone

      t.references :company

      t.timestamps
    end

    create_table :staff_members do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.decimal :rate
      t.string :phone
      t.string :username
      t.string :password

      t.references :company

      t.timestamps
    end
    
    create_table :timesheet_items do |t|
      t.date :date
      t.decimal :hours
      t.string :notes
      t.boolean :billed

      t.references :company
      t.references :client
      t.references :project

      t.timestamps
    end
    
    create_table :payments do |t|
      t.date :date
      t.decimal :amount
      t.references :invoice
      t.references :company
      t.references :client

      t.timestamps
    end
    
    create_table :invoice_lines do |t|
      t.string :task
      t.string :notes
      t.decimal :cost
      t.decimal :units

      t.references :company
      t.references :invoice

      t.timestamps
    end
    
    create_table :companies do |t|
      t.string :name
      t.string :country
      t.string :address
      t.string :address_line_two
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :email
      t.string :phone
      t.string :fax

      t.timestamps
    end
    
    create_table :invoices do |t|
      t.string :number
      t.date :date_of_issuer
      t.text :note

      t.references :company

      t.timestamps
    end

    create_table :expenses do |t|
      t.decimal :amount
      t.date :date
      t.string :vendor
      t.string :category
      t.string :notes

      t.references :company
      t.references :client
      t.references :project

      t.timestamps
    end
    
    create_table :projects do |t|
      t.string :name
      t.string :billing_method
      t.decimal :rate

      t.references :company

      t.timestamps
    end
  end
end
