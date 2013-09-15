require 'test_helper'

class PaymentOptionsControllerTest < ActionController::TestCase
  setup do
    @payment_option = payment_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payment_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment_option" do
    assert_difference('PaymentOption.count') do
      post :create, payment_option: {account_card_number: @payment_option.account_card_number, routing_cvv_number: @payment_option.routing_cvv_number, type: @payment_option.type}
    end

    assert_redirected_to payment_option_path(assigns(:payment_option))
  end

  test "should show payment_option" do
    get :show, id: @payment_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment_option
    assert_response :success
  end

  test "should update payment_option" do
    put :update, id: @payment_option, payment_option: {account_card_number: @payment_option.account_card_number, routing_cvv_number: @payment_option.routing_cvv_number, type: @payment_option.type}
    assert_redirected_to payment_option_path(assigns(:payment_option))
  end

  test "should destroy payment_option" do
    assert_difference('PaymentOption.count', -1) do
      delete :destroy, id: @payment_option
    end

    assert_redirected_to payment_options_path
  end
end
