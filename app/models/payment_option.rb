class PaymentOption < ActiveRecord::Base
  attr_accessible :account_card_number, :routing_cvv_number, :type
  belongs_to :customer
end
