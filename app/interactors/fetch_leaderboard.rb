class FetchLeaderboard
  include Interactor

  def call
    context.leaderboard = fetch_leaderboard
  end
  
  private

  def fetch_leaderboard
    board = User.all.order(wins: :desc).limit(10)
  end
end
