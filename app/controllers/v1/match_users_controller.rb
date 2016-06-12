class V1::MatchUsersController < ApiController
  before_action :set_match_user, only: [:show, :update, :destroy]

  # GET /match_users
  def index
    @match_users = MatchUser.all

    render json: @match_users
  end

  # GET /match_users/1
  def show
    render json: @match_user
  end

  # POST /match_users
  def create
    @match_user = MatchUser.new(match_user_params)

    if @match_user.save
      render json: @match_user, status: :created, location: @match_user
    else
      render json: @match_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /match_users/1
  def update
    if @match_user.update(match_user_params)
      render json: @match_user
    else
      render json: @match_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /match_users/1
  def destroy
    @match_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_user
      @match_user = MatchUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def match_user_params
      params.require(:match_user).permit(:user_id, :match_id)
    end
end
