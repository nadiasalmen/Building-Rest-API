require 'test_helper'

class Api::V1::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_orders_index_url
    assert_response :success
  end

end
