class UsersController < ApplicationController


# needs create method



  private

  def users_params
    params.require(:user).permit(:email, :password)
  end
end
