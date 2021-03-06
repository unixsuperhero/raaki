class V1::LeaderboardsController < ApplicationController
  def index
    leaderboards = FetchLeaderboard.call

    if leaderboards.success?
      leaderboard = leaderboards.leaderboard.map(&LeaderboardSerializer.method(:new))

      render json: leaderboard, status: 200
    else
      render status: :unprocessable_entity
    end
  end
end
