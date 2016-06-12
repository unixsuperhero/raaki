class V1::GamesController < ActionController::Base

  def index
  end

  def create
    game = Game.new(game_params)
    game.user = current_user

    if message.save
      ActionCable.server.broadcast 'matches',
        choice: game.one_choice,
        user: game.user.nick
      head :ok
    end
  end

  private

  def game_params
    params.permit(:player_one_id, :player_two_id, :winner_id, :one_choice, :two_choice, :in_progress)
  end

end
