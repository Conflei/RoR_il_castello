require 'test_helper'

class UserTestControllerTest < ActionController::TestCase
  test "should get user_testing" do
    get :user_testing
    assert_response :success
  end

end
