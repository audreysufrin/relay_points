require 'date'
require 'time'

class DeliveryDatesController < ApplicationController
  def next_delivery_date
    date = Date.today
    if date.wday == 1 || (date.wday == 2 && date.hour < 19)
      @next_delivery = date.to_date
    else
      @next_delivery = date.to_date + 7
    end

    until (@next_delivery.wday == 5)
      @next_delivery = @next_delivery.next_day
    end

    while DayOff.exists?(day_off_date: @next_delivery)
      @next_delivery += 7
    end
    return @next_delivery
  end

  def next_delivery_api
    @next_delivery = { next_delivery_date: next_delivery_date }
    render json: @next_delivery.to_json
  end
end
