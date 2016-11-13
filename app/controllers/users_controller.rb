class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = current_user
    @owned_rankings = @user.rankings
  end
end
