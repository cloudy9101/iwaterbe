class UsersController < ApplicationController
  before_action :signin

  def show
    @user = current_user
  end
end
