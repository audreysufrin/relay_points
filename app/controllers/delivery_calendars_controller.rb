class DeliveryCalendarsController < ApplicationController
  def index
    @delivery_calendars = DeliveryCalendar.all
  end
end
