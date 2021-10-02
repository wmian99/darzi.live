require 'test_helper'

class TailorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tailor = tailors(:one)
  end

  test "should get index" do
    get tailors_url
    assert_response :success
  end

  test "should get new" do
    get new_tailor_url
    assert_response :success
  end

  test "should create tailor" do
    assert_difference('Tailor.count') do
      post tailors_url, params: { tailor: { address: @tailor.address, city: @tailor.city, confirm_password: @tailor.confirm_password, email: @tailor.email, name: @tailor.name, password: @tailor.password, phone: @tailor.phone, shop_name: @tailor.shop_name } }
    end

    assert_redirected_to tailor_url(Tailor.last)
  end

  test "should show tailor" do
    get tailor_url(@tailor)
    assert_response :success
  end

  test "should get edit" do
    get edit_tailor_url(@tailor)
    assert_response :success
  end

  test "should update tailor" do
    patch tailor_url(@tailor), params: { tailor: { address: @tailor.address, city: @tailor.city, confirm_password: @tailor.confirm_password, email: @tailor.email, name: @tailor.name, password: @tailor.password, phone: @tailor.phone, shop_name: @tailor.shop_name } }
    assert_redirected_to tailor_url(@tailor)
  end

  test "should destroy tailor" do
    assert_difference('Tailor.count', -1) do
      delete tailor_url(@tailor)
    end

    assert_redirected_to tailors_url
  end
end
