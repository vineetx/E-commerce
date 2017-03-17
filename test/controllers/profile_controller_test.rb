require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get userprofile" do
    get profile_userprofile_url
    assert_response :success
  end

  test "should get user_orders" do
    get profile_user_orders_url
    assert_response :success
  end

end
