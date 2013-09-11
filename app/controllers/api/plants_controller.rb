class Api::PlantsController < ApplicationController
  
  def seasonal_favorites
    @season = Season.find_by_name(params[:slug])
    @plants = Plant.find_all_by_season_id(@season.id)
    if(params[:format] === 'xml')
      render :xml => @plants
    else
      render :json => @plants
    end
  end
  
end
