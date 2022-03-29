require 'date'
require 'time'

class DeliveryDateController < ApplicationController
  def nextDeliveryDate
    date = Time.new(2022, 04, 12, 20, 04)
    if date.wday == 1 || (date.wday == 2 && date.hour < 19)
      next_delivery = date.to_date
    else
      next_delivery = date.to_date + 7
    end

    until (next_delivery.wday == 5)
      next_delivery = next_delivery.next_day
    end
  end
end

# si next_delivery est un jour ferié
# alors next_delivery sera le vendredi suivant (next_delivery += 7)

# p next_delivery
