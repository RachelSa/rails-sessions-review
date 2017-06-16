class SessionsController < ApplicationController

  # add a create action that authenticates a user.
  # if successful sets the session and gives a flash notice.
  # Otherwise, redirects and gives flash notice.

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      #add flash and session
      redirect_to dashboard_path
    else
      flash[:hi] = "🌮 BAD!"
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
