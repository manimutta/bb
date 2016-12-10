class UserController < ApplicationController
	
  def index
    @users = User.all
  end

  # GET /users/1/edit
  def edit_user
    @roles = Role.all
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user.update(role_id: params[:role])
    @user.save
    redirect_to users_url, notice: 'User was successfully updated.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.fetch(:user, {})
    end
end
