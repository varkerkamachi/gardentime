require 'spec_helper'

describe PlantsController do
  let(:myplant){ Plant.create(:id => 64, :name => 'Thorny Rose', :location_id => 2, :plant_type_id => 1, :colors => 'red, yellow and blue', :description => 'blahblah', :gallery_id => 4, :season_id => 3, :caredifficulties_id => 2, :genus => 'whoknows')}
  subject{ myplant }
  
  describe 'loads the views' do
    it 'loads the index page' do
      get :index
      expect(response.status).to eq(200)
      response.should render_template('plants/index')
      expect(assigns(:plants)).to_not be_nil
    end
    
    it 'loads the show page' do
      get :show, :id => myplant.id
      expect(response.status).to eq(200)
      response.should render_template('plants/show')
      expect(assigns(:plant)).to_not be_nil      
    end
    
    it 'loads the sun lover view' do
      get :sun_lovers
      expect(response.status).to eq(200)
      response.should render_template('plants/special_filters')
    end
  end
end
