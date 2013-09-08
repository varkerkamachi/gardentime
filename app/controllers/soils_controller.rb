class SoilsController < ApplicationController
  
  def index
    @soils = Soil.all
  end
  
  def show
  end
  
end
