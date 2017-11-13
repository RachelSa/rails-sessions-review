class StaticController < ApplicationController
  before_action :authorize_user, only: [:map]

  def home
    @user = User.new
  end

  def dashboard
    render :dashboard
  end

  def decoy
    render :decoy
  end

  def map
    render :map
  end

  private



end
