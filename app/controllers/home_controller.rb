class HomeController < ApplicationController
  layout 'application'
  
  def index
    @curated_plants = Plant.find(:all, :limit => 5)
  end
  
end
