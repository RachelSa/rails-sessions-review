class SessionsController < ApplicationController

  # add a create action that authenticates a user.
  # if successful sets the session and gives a flash notice.
  # Otherwise, redirects and gives flash notice.


 def create
   @user = User.find_by(email: params[:user][:email])
   if @user.authenticate(params[:user][:password])
     session[:user_id] = @user.id
     redirect_to dashboard_path
  else
    flash.now[:notice] = "you logged in wrong"
    @user = User.new
    render 'static/home'
  end
 end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
