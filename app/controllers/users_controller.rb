class UsersController < ApplicationController


  def create
    @user = User.new(users_params)
    if @user.save
      # flash and sessions
      redirect_to dashboard_path
    else
      flash[:notice] = "🦉 Not a valid user!!"
      redirect_to root_path
    end
  end



  private

  def users_params
    params.require(:user).permit(:email, :password)
  end
end
