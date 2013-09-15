class Customer < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone
  validates :email, :presence => true, :uniqueness => true
  has_many :payment_options
end
