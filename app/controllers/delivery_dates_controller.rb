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
  end

  def next_delivery_api
    @next_delivery_date = nextDeliveryDate
    render json: @next_delivery_date.to_json
  end
end

# si next_delivery est un jour ferié
#if date ==
# alors next_delivery sera le vendredi suivant (next_delivery += 7)
#else
  #next_delivery+= 7
#end
# p next_delivery
