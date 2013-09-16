class SeasonsController < ApplicationController
  
  def index
    @seasons = Season.all
  end
  
  def show
    @season = Season.find_by_id(params[:id])
    @season_plants = !Plant.find_all_by_season_id(params[:id]).nil? ? Plant.find_all_by_season_id(params[:id]) : ''
  end
  
end
