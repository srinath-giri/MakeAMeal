require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not create new customer without email id" do
    c = Customer.new()
    assert !c.save
  end
end
