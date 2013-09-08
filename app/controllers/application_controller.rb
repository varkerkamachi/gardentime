class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_locations
  
  def get_locations
    @location_nav_items = Location.find(:all)
  end
end
