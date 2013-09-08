class HomeController < ApplicationController
  layout 'application'
  
  def index
    @curated_plants = Plant.find(:all, :limit => 5)
    @season_nav_items = Season.find(:all)
    @plant_types = PlantType.find(:all)
  end
  
end
