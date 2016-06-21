class UsersController < ApplicationController
  before_action :get_user, only: [:edit, :show, :update] 

  def index
    @users = User.all
  end

  def edit

  end

  def show

  end

  def update
    params["user"]["gender"] = params["user"]["gender"].to_i
    @user.update!(update_params)
    redirect_to user_path
  end

  private

  def get_user
    @user = User.find(params[:id])
  end

  def update_params
    params.require(:user).permit(:gender, :name)
  end

end
