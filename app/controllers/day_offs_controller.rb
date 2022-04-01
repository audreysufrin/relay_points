class DayOffsController < ApplicationController
  def index
    @day_offs = DayOff.all
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

  private

  def day_off_params
    params.require(:day_off).permit(:day_off_date)
  end
end
