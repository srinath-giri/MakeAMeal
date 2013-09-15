class Customer < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone
  has_many :payment_options
end
