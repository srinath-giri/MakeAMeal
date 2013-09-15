require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  setup do
    @customer1 = customers(:one)
    @customer2 = customers(:two)
  end

  test "should not create new customer without email id" do
    c = Customer.new
    assert !c.save
  end

  test "should not create new customer with duplicate email id" do
    c = @customer1
    c.save
    c = Customer.new(:email => @customer1.email)
    assert !c.save
  end
end
