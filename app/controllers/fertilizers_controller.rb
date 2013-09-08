class FertilizersController < ApplicationController
  
  def index
    @fertilizers = Fertilizer.all
  end
  
  def show
    @fertilizer = Fertilizer.find_by_id(params[:id])
  end
  
end
