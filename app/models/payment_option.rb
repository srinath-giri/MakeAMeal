class PaymentOption < ActiveRecord::Base
  attr_accessible :account_card_number, :routing_cvv_number, :payment_type
  validates :account_card_number, :numericality => {:only_integer => true}, :length => {:maximum => 16 }
  validates :routing_cvv_number, :numericality => {:only_integer => true}, :length => {:maximum => 10 }
  validates :payment_type, :inclusion => { in: %w(Account Card)}
  belongs_to :customer
end
