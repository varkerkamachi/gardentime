class SoilsController < ApplicationController
  
  def index
    @soils = Soil.all
  end
  
  def show
    @soil = Soil.find_by_id(params[:id])
    if !Care.find_all_by_soil_id(params[:id]).nil?
      cares = Care.find_all_by_soil_id(params[:id])
      cares.each do |x|
        if !Plant.find_by_id(x.plant_id).nil?
          @associated_plants = Plant.find_all_by_id(x.plant_id)
        end
      end
    end
  end
  
end
