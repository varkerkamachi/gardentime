require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    before(:each) do
      get 'index' 
    end
    it "returns http success" do
      response.should be_success
    end
    
    it "assigns @curated_plants" do
      expect(assigns(:curated_plants)).to_not be_nil
    end
    it "assigns @location_nav_items" do
      expect(assigns(:location_nav_items)).to_not be_nil
    end
    it "assigns @season_nav_items" do
      expect(assigns(:season_nav_items)).to_not be_nil
    end
    it "assigns @plant_types" do
      assigns(:plant_types).should_not be_nil
    end
    it "assigns @water_lovers" do
      assigns(:water_lovers).should_not be_nil
    end
    it "assigns @sun_lovers" do
      assigns(:water_lovers).should_not be_nil
    end
    it "assigns @drought_tolerants" do
      assigns(:water_lovers).should_not be_nil
    end
  end

end
