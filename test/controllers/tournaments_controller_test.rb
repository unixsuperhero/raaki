require 'test_helper'

class TournamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tournament = tournaments(:one)
  end

  test "should get index" do
    get tournaments_url
    assert_response :success
  end

  test "should create tournament" do
    assert_difference('Tournament.count') do
      post tournaments_url, params: { tournament: { ends_at: @tournament.ends_at, number_of_players: @tournament.number_of_players, starts_at: @tournament.starts_at, winner_id: @tournament.winner_id } }
    end

    assert_response 201
  end

  test "should show tournament" do
    get tournament_url(@tournament)
    assert_response :success
  end

  test "should update tournament" do
    patch tournament_url(@tournament), params: { tournament: { ends_at: @tournament.ends_at, number_of_players: @tournament.number_of_players, starts_at: @tournament.starts_at, winner_id: @tournament.winner_id } }
    assert_response 200
  end

  test "should destroy tournament" do
    assert_difference('Tournament.count', -1) do
      delete tournament_url(@tournament)
    end

    assert_response 204
  end
end
