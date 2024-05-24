class HomeController < ApplicationController
  def index
    @user = User.new
    @user = User.all
  end

  def login
    redirect_to 'users/recover-password/new/'
  end

end
