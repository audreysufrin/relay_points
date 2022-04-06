require 'date'
require 'time'

class DayOffsController < ApplicationController
  def index
    @day_offs = DayOff.all
    @next_delivery = next_delivery_date
  end

  def new
    @day_off = DayOff.new
  end

  def create
    @day_off = DayOff.new(day_off_params)
    @day_off.save!

    redirect_to day_offs_path
  end

  def update
    @day_off = DayOff.find(params[:id])
    @day_off.update(day_off_params)
    redirect_to day_off_path(@day_off)
  end

  def destroy
    @day_off = DayOff.find(params[:id])
    @day_off.destroy
    redirect_to day_offs_path
  end

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
    @next_delivery_date = next_delivery_date
    render json: @next_delivery_date.to_json
  end
end

  private

  def day_off_params
    params.require(:day_off).permit(:day_off_date)
  end
