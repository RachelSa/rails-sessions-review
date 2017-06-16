class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash[:notice] = "all logged in and stuff!! 🦊"
      redirect_to dashboard_path
    else
      flash[:notice] = "🌭 bad login"
      redirect_to root_path
    end
  end



  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
