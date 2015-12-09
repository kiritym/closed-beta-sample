require 'test_helper'

class InvitationControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
