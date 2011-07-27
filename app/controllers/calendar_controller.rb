class CalendarController < ApplicationController
  before_filter :require_user
  def index
    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i

    @shown_month = Date.civil(@year, @month)

    @event_strips = Event.where("user_id = ?", current_user.id ).event_strips_for_month(@shown_month)
  end
  
end
