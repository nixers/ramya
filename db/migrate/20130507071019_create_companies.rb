class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :email
      t.string :website
      t.integer :phone
      t.string :industry
      t.integer :number_employee
      t.string :description

      t.timestamps
    end
  end
end
