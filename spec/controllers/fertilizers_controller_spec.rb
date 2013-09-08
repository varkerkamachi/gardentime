require 'spec_helper'

describe FertilizersController do
  let(:fff) { Fertilizer.create(:id => 18, :name => 'Manure') }
  subject{ fff }
  
  describe 'loads correct page for the action' do
    it 'loads the index page' do
      get :index
      expect(response.status).to eq(200)
      expect(assigns(:fertilizers)).to_not be_nil
      response.should render_template('fertilizers/index')
    end
    
    it 'loads the show page' do
      get :show, :id => fff.id
      expect(response.status).to eq(200)
      expect(assigns(:fertilizer)).to_not be_nil
    end
  end

end
