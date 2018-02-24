class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :doorkeeper_authorize!, only: :show

  def create
    service = Users::Create.new(user_params)
    @user, @errors = service.call
  end

  def show
    @user = current_resource_owner
  end

  private

  def user_params
    params.permit(:email, :password, :name, :age)
  end
end
