require 'test_helper'

class ProfileControllerTest < ActionController::TestCase
  test "should get input" do
    get :input
    assert_response :success
  end

  test "should get display" do
    post :display
    assert_response :success
  end

end
