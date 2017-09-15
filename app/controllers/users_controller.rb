class UsersController < ApplicationController
  before_action :authorize_as_admin

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy if copywriter?(@user)
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:email, :role, :password, :password_confirmation)
  end
end
