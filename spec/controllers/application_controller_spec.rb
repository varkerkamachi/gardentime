require 'spec_helper'

describe ApplicationController do
  describe 'gets before filters ' do
    it{ should respond_to(:get_plants) }
    it{ should respond_to(:get_locations) }
    it{ should respond_to(:get_seasons) }  
    it{ should respond_to(:get_types) }  
    it{ should respond_to(:no_greenthumbs) }  
    it{ should respond_to(:extra_tlc) }  
    it{ should respond_to(:pro_challenge) }  
    it{ should respond_to(:find_water_lovers) }  
    it{ should respond_to(:find_sun_lovers) }  
    it{ should respond_to(:find_drought_tolerants) }  
  end
end
