require "test_helper"

class BidTest < ActiveSupport::TestCase
  setup do
    @bid = bids(:one)
  end

  test "should be valid" do
    assert @bid.valid?
  end
end
