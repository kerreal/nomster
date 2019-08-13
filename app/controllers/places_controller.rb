class PlacesController < ApplicationController

  def index
    @places = Place.paginate(:per_page => 10, :page => params[:page])
  end

  def create
    Place.create(place_params)
    redirect_to root_path
  end

  def new
    @place = Place.new
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

end
