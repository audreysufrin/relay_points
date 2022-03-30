class RelayPointsController < ApplicationController
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
    @relay_pointt.save
    redirect_to relay_point_path(@relay_point)
  end

  def edit
    @relay_point = RelayPoint.find(params[:id])
  end

  def update
    @relay_point = RelayPoint.find(params[:id])
    @relay_point.update(relay_point_params)
    redirect_to relay_point_path(@relay_point)
  end

  def destroy
    @relay_point = RelayPoint.find(params[:id])
    @relay_point.destroy
    redirect_to relay_points_path
  end

  def index_api
    @relay_point = relay-points{
      {
        name: "Ta Nou",
        address: "Baie des Tourelles - quartier Dillon",
        hours: "7h à 12h et 13h à 15h",
        status: "actif"
      },
      {
        name: "Mme Maffre",
        address: "23 lotissement Les Hameaux de la Pagerie",
        hours: "15h à 19h",
        status: "actif"
      },
      {
        name: "Mme et Mr Murté",
        address: "22 rue des Arawaks",
        hours: "10h à 18h",
        status: "actif"
      },
      {
        name: "Dépôt de Bacchus",
        address: "Quartier Bac, Pays Noyé",
        hours: "10h à 12h et 14h à 18h",
        status: "actif"
      },
      {
        name: "Mr Marmot",
        address: "Route des bénédictines",
        hours: "14h à 17h",
        status: "actif"
      },
      {
        name: "Mr Pasua",
        address: "2bis rue Gabriel Plateau fofo",
        hours: "13h30 à 15h30 et 16h30 à 18h",
        status: "actif"
      },
      {
        name: "Mme et Mr Toris",
        address: "Quartier Médecin",
        hours: "10h à 12h et 13h à 17h",
        status: "actif"
      },
    }

  end

  private

  def relay_point_params
    params.require(:relay_point).permit(:name, :name_shopify, :name_common, :hours, :localisation, :address, :contact, :status, :commune, :phone_number)
  end

end
