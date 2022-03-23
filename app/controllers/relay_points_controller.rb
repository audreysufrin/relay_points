class RelayPointsController < ApplicationController
  def index
    @relay_points = RelayPoint.all
  end

  def show
    @relay_point = RelayPoint.find(params[:id])
  end

  def new
    @relay_points = RelayPoint.new
  end

  def create
    @relay_point = RelayPoint.new(relay_point_params)
    @relay_pointt.save

    redirect_to relay_point_path(@relay_point)
  end

  def edit
    @relay_point = RelayPoint.find(params[:id])
  end

  def update
    relay_point = RelayPoint.find(params[:id])
    relay_point.update(relay_point_params)

    redirect_to relay_point_path(relay_point)
  end


  def destroy
    relay_point = RelayPoint.find(params[:id])
    relay_point.destroy

    redirect_to relay_point_path
  end

  private

  def relay_point_params
    params.require(:relay_point).permit(:name, :name_shopify, :name_common, :hours, :geolocalisation, :address, :contact, :status, :commune, :disponibility, :phone_number)
  end

end
