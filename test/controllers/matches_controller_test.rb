require 'test_helper'

class MatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get matches_url
    assert_response :success
  end

  test "should create match" do
    assert_difference('Match.count') do
      post matches_url, params: { match: { in_progress: @match.in_progress, one_choice: @match.one_choice, player_one_id: @match.player_one_id, player_two_id: @match.player_two_id, player_winner_id: @match.player_winner_id, two_choice: @match.two_choice } }
    end

    assert_response 201
  end

  test "should show match" do
    get match_url(@match)
    assert_response :success
  end

  test "should update match" do
    patch match_url(@match), params: { match: { in_progress: @match.in_progress, one_choice: @match.one_choice, player_one_id: @match.player_one_id, player_two_id: @match.player_two_id, player_winner_id: @match.player_winner_id, two_choice: @match.two_choice } }
    assert_response 200
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete match_url(@match)
    end

    assert_response 204
  end
end
