class Company < ActiveRecord::Base
  attr_accessible :company_name, :description, :email, :industry, :number_employee, :phone, :website
  validates_presence_of :company_name, :email, :website, :phone, :industry, :number_employee, :description

  validates_format_of :email, :with => /[-!#$&'*+\/=?`{|}~.\w]+@[a-zA-Z0-9]([-a-zA-Z0-9]*[a-zA-Z0-9])*(\.[a-zA-Z0-9]([-a-zA-Z0-9]*[a-zA-Z0-9])*)+$/, :message => ' invalid email '
  validates_numericality_of :phone, :only_integer => true, :message => ' invalid phone number '
  validates_uniqueness_of :email, :phone, :message => ' Already in use '
                            
end
