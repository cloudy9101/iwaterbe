class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private

  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end
end
