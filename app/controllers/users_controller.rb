class UsersController < ApplicationController
  before_action :doorkeeper_authorize!

  def show
    @user = current_resource_owner
  end
end
