require 'spec_helper'

describe Api::PlantsController do
  
  describe "GET 'seasonal_favorites'" do
    it "returns http success" do
      get :seasonal_favorites, :slug => 'summer'
      expect(response.status).to eq(200)
    end
    it "responds with JSON" do
      get :seasonal_favorites, :slug => 'fall', :format => 'json'
      response.header['Content-Type'].should include 'application/json'
    end
    it "responds with XML" do
      get :seasonal_favorites, :slug => 'summer', :format => 'xml'
      response.header['Content-Type'].should include 'application/xml'
    end
  end

end
