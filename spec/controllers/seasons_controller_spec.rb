require 'spec_helper'

describe SeasonsController do
  let(:sss){ Season.create(:id => 21, :name => 'Blustery Time') }
  subject{ sss }
  
  describe 'get views' do
    it 'loads the index page' do
      get :index
      expect(response.status).to eq(200)
      expect(assigns(:seasons)).to_not be_nil
    end
    
    it 'loads the show page' do
      get :show, :id => sss.id
      expect(response.status).to eq(200)
      expect(assigns(:season)).to_not be_nil
      expect(assigns(:season_plants)).to_not be_nil
    end
  end
  
end
