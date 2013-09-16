class PlantsController < ApplicationController
  
  def index
    @plants = Plant.all
    @vote = Vote.new
  end
  
  def show
    @plant = Plant.find_by_id(params[:id])
    @gallery = Gallery.find_by_plant_id(params[:id])
    @plantcare = Care.find_by_plant_id(params[:id])
    @difficulties = Caredifficulty.all
  end
  
  def sun_lovers
    @pagetitle = 'Sun lovers'
    @filtered_results = @sun_lovers
    render :template => 'plants/special_filters'
  end
  
  def water_lovers
    @pagetitle = 'Water lovers'
    @filtered_results = @water_lovers
    render :template => 'plants/special_filters'
  end
  
  def drought_tolerant
    @pagetitle = 'Drought Tolerant Varieties'
    @filtered_results = @drought_tolerant
    render :template => 'plants/special_filters'
  end
  
  def easy_care
    @pagetitle = 'No greenthumb? Easiest plants to care for'
    @filtered_results = @low_difficulty
    render :template => 'plants/special_filters'
  end
  
  def medium_care
    @pagetitle = 'Brave, eh? Somewhat easy plants to care for'
    @filtered_results = @medium_difficulty
    render :template => 'plants/special_filters'
  end
  
  def hard_care
    @pagetitle = 'Think you\'re a pro? Hardest plants to care for'
    @filtered_results = @high_difficulty
    render :template => 'plants/special_filters'
  end
  
end
