class SessionsController < ApplicationController

  # add a create action that authenticates a user.
  # if successful sets the session and gives a flash notice.
  # Otherwise, redirects and gives flash notice.



  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
