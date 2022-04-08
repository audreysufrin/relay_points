class RelayPointsController < ApplicationController
  skip_before_action :authenticate_admin!, only: [:index, :index_api ]
  def index
    @relay_points = RelayPoint.all
  end

  def show
    @relay_point = RelayPoint.find(params[:id])
  end

  def new
    @relay_point = RelayPoint.new
  end

  def create
    @relay_point = RelayPoint.new(relay_point_params)
    @relay_point.admin = current_admin
    @relay_point.save
    redirect_to relay_point_path(@relay_point)
  end

  def edit
    @relay_point = RelayPoint.find(params[:id])
  end

  def update
    @relay_point = RelayPoint.find(params[:id])
    @relay_point.update(relay_point_params)
    @relay_point.save
    redirect_to relay_point_path(@relay_point)
  end

  def destroy
    @relay_point = RelayPoint.find(params[:id])
    @relay_point.destroy
    redirect_to relay_points_path
  end

  def index_api
    @relay_points = RelayPoint.where(status: 'actif')
    render json: @relay_points.to_json
  end

  private

  def relay_point_params
    params.require(:relay_point).permit(:name, :name_shopify, :name_common, :hours, :localisation, :address, :contact, :status, :commune, :phone_number, :image_shopify)
  end
end
