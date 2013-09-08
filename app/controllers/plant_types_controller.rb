class PlantTypesController < ApplicationController
  
  def index
    @plant_types = PlantType.all
  end
  
  def show
    @plant_type = PlantType.find_by_id(params[:id])
  end
  
end
