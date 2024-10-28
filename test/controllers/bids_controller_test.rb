require "test_helper"

class BidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in_company
    @bid = bids(:one)
  end

  test "should get new" do
    sign_in_company
    get new_bid_url
    assert_response :success
  end

  test "should create bid" do
    assert_difference("Bid.count") do
      post bids_url, params: {
        bid: @bid.attributes.slice("company_name", "route", "load").merge(price: @bid.price - 1) }
    end
    assert_redirected_to new_bid_url(bid: { route: @bid.route, load: @bid.load })
  end
end
