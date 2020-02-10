require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get show_gossips" do
    get home_show_gossips_url
    assert_response :success
  end

end
