require 'test_helper'

class MatchUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match_user = match_users(:one)
  end

  test "should get index" do
    get match_users_url
    assert_response :success
  end

  test "should create match_user" do
    assert_difference('MatchUser.count') do
      post match_users_url, params: { match_user: { match_id: @match_user.match_id, user_id: @match_user.user_id } }
    end

    assert_response 201
  end

  test "should show match_user" do
    get match_user_url(@match_user)
    assert_response :success
  end

  test "should update match_user" do
    patch match_user_url(@match_user), params: { match_user: { match_id: @match_user.match_id, user_id: @match_user.user_id } }
    assert_response 200
  end

  test "should destroy match_user" do
    assert_difference('MatchUser.count', -1) do
      delete match_user_url(@match_user)
    end

    assert_response 204
  end
end
