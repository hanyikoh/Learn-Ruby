require "test_helper"

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get test_webpack" do
    get test_test_webpack_url
    assert_response :success
  end
end
