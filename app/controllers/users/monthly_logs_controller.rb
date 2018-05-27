module Users
  class MonthlyLogsController < ApplicationController
    # before_action :doorkeeper_authorize!

    def index
      date = begin
               Date.parse(params[:date] || '')
             rescue ArgumentError
               Date.current
             end
      # @logs = current_resource_owner.drink_logs
      @logs = User.first.drink_logs
        .where('date >= ? AND date <= ?', date.beginning_of_month, date.end_of_month)
        .group(:date)
        .sum(:volume)
    end
  end
end
