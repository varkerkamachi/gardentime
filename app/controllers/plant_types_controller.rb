class PlantTypesController < ApplicationController
  
  def index
    @plant_types = PlantType.all
  end
  
  def show
    @plant_type = PlantType.find_by_id(params[:id])
    @associated_plants = Plant.find_all_by_plant_type_id(params[:id])
  end
  
end
