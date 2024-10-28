require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_session_url
    assert_response :success
  end

  test "should create session" do
    post sessions_url, params: { session: { company_name: "MyString" } }
    assert_redirected_to new_bid_url
  end
end
