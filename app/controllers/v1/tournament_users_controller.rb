class V1::TournamentUsersController < ApplicationController
  before_action :set_tournament_user, only: [:show, :update, :destroy]

  # GET /tournament_users
  def index
    @tournament_users = TournamentUser.all

    render json: @tournament_users
  end

  # GET /tournament_users/1
  def show
    render json: @tournament_user
  end

  # POST /tournament_users
  def create
    @tournament_user = TournamentUser.new(tournament_user_params)

    if @tournament_user.save
      render json: @tournament_user, status: :created, location: @tournament_user
    else
      render json: @tournament_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tournament_users/1
  def update
    if @tournament_user.update(tournament_user_params)
      render json: @tournament_user
    else
      render json: @tournament_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tournament_users/1
  def destroy
    @tournament_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament_user
      @tournament_user = TournamentUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tournament_user_params
      params.require(:tournament_user).permit(:{user,tournament_id)
    end
end
