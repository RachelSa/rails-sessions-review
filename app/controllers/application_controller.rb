class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?

  def logged_in?
    !!session[:user_id]
  end

  def authorize_user
    if !logged_in?
      flash[:notice] = 'hey, no way!'
      redirect_to root_path
    end
  end

end
