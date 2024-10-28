require "test_helper"

class BidsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    sign_in_company
    get new_bid_url
    assert_response :success
  end
end
