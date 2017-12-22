require 'test_helper'

class ConfirmationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @confirmation = confirmations(:one)
  end

  test "should get index" do
    get confirmations_url
    assert_response :success
  end

  test "should get new" do
    get new_confirmation_url
    assert_response :success
  end

  test "should create confirmation" do
    assert_difference('Confirmation.count') do
      post confirmations_url, params: { confirmation: { ime: @confirmation.ime, prezime: @confirmation.prezime, svrha: @confirmation.svrha } }
    end

    assert_redirected_to confirmation_url(Confirmation.last)
  end

  test "should show confirmation" do
    get confirmation_url(@confirmation)
    assert_response :success
  end

  test "should get edit" do
    get edit_confirmation_url(@confirmation)
    assert_response :success
  end

  test "should update confirmation" do
    patch confirmation_url(@confirmation), params: { confirmation: { ime: @confirmation.ime, prezime: @confirmation.prezime, svrha: @confirmation.svrha } }
    assert_redirected_to confirmation_url(@confirmation)
  end

  test "should destroy confirmation" do
    assert_difference('Confirmation.count', -1) do
      delete confirmation_url(@confirmation)
    end

    assert_redirected_to confirmations_url
  end
end
