class SeasonsController < ApplicationController
  
  def index
    @seasons = Season.all
  end
  
  def show
    @season = Season.find_by_id(params[:id])
  end
  
end
