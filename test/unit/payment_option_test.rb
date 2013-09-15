require 'test_helper'

class PaymentOptionTest < ActiveSupport::TestCase
  setup do
    @payment_option = payment_options(:one)
    @customer = customers(:one)
  end

  test "account or card number should be in digits only" do
     p = @payment_option
     p.account_card_number = '45AD'
     assert !p.save
  end

  test "account or card number should have a maximum length of 16 digits" do
    p = @payment_option
    p.account_card_number = '12345678123456780'
    assert !p.save
  end

  test "routing or cvv number should be in digits only" do
    p = @payment_option
    p.routing_cvv_number = '45AD'
    assert !p.save
  end

  test "routing or cvv number should have a maximum length of 10 digits" do
    p = @payment_option
    p.routing_cvv_number = '12345678901'
    assert !p.save
  end

  test "payment type should have be Account or Card only" do
    p = @payment_option
    assert p.save
    p = payment_options(:two)
    assert p.save
    p.payment_type = 'Cheque'
    assert !p.save
  end

  test "payment option should belong to a customer" do
    p = @payment_option
    c = @customer
    p.customer = nil
    assert !p.save
    p.customer = @customer
    assert p.save
  end
end
