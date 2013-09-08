class SoilsController < ApplicationController
  
  def index
    @soils = Soil.all
  end
  
  def show
    @soil = Soil.find_by_id(params[:id])
  end
  
end
