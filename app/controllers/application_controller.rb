class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_plants, :get_locations, :get_seasons, :get_types, :get_soils, :no_greenthumbs, :extra_tlc, :pro_challenge, :get_fertilizers, :find_water_lovers, :find_sun_lovers, :find_drought_tolerants
  
  def get_plants
    Plant.all
  end
  
  def get_locations
    @location_nav_items = Location.find(:all)
  end
  
  def get_seasons
    @season_nav_items = Season.all
  end
  
  def get_types
    @plant_types = PlantType.find(:all)
  end
  
  def get_fertilizers
    @fertilizers = Fertilizer.all
  end

  def get_soils
    @soils = Soil.all
  end

  def find_water_lovers
    @plants, @water_lovers = get_plants, []
    @plants.each do |s|
      if !Care.find_by_plant_id(s.id).nil?
        if Care.find_by_plant_id(s.id).water_lover?
          @water_lovers << s
        end
      end
    end
  end
  
  def no_greenthumbs
    @low_difficulty = Plant.find_all_by_caredifficulties_id(1)
  end
  
  def extra_tlc
    @medium_difficulty = Plant.find_all_by_caredifficulties_id(2)
  end

  def pro_challenge
    @high_difficulty = Plant.find_all_by_caredifficulties_id(3)
  end

  def find_sun_lovers
    @plants, @sun_lovers = get_plants, []
    @plants.each do |s|
      if !Care.find_by_plant_id(s.id).nil?
        if Care.find_by_plant_id(s.id).sun_lover?
          @sun_lovers << s
        end
      end
    end
  end
  
  def find_drought_tolerants
    @plants, @drought_tolerants = get_plants, []
    @plants.each do |s|
      if !Care.find_by_plant_id(s.id).nil?
        if Care.find_by_plant_id(s.id).drought_tolerant?
          @drought_tolerants << s
        end
      end
    end
  end
  
end
