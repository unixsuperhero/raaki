require 'test_helper'

class TournamentUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tournament_user = tournament_users(:one)
  end

  test "should get index" do
    get tournament_users_url
    assert_response :success
  end

  test "should create tournament_user" do
    assert_difference('TournamentUser.count') do
      post tournament_users_url, params: { tournament_user: { {user,tournament_id: @tournament_user.{user,tournament_id } }
    end

    assert_response 201
  end

  test "should show tournament_user" do
    get tournament_user_url(@tournament_user)
    assert_response :success
  end

  test "should update tournament_user" do
    patch tournament_user_url(@tournament_user), params: { tournament_user: { {user,tournament_id: @tournament_user.{user,tournament_id } }
    assert_response 200
  end

  test "should destroy tournament_user" do
    assert_difference('TournamentUser.count', -1) do
      delete tournament_user_url(@tournament_user)
    end

    assert_response 204
  end
end
