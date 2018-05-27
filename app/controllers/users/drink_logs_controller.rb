module Users
  class DrinkLogsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :doorkeeper_authorize!

    def index
      @drink_logs = current_resource_owner.drink_logs.drink_in(params[:start_at], params[:end_at])
    end

    def create
      current_resource_owner.drink_logs.create(time: DateTime.now.utc,
                                               volume: params[:volume])
    end
  end
end
