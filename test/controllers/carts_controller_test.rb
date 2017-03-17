require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get carts_destroy_url
    assert_response :success
  end

end
