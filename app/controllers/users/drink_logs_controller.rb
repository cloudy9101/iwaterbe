module Users
  class DrinkLogsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :doorkeeper_authorize!

    def create
      current_resource_owner.drink_logs.create(time: DateTime.now,
                                               volume: params[:volume])
    end

    def test
      byebug
    end
  end
end
