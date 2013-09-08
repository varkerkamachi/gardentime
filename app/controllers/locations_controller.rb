class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find_by_id(params[:id])
    @associated_plants = Plant.find_all_by_location_id(params[:id])
  end
  
end
