require 'spec_helper'

describe PlantTypesController do
  let(:pt) { PlantType.create(:id =>30, :name => 'Shrubbery', :features => 'it is green, it has leaves', :description => 'Shrubberies have often been found in the swamps of Scotland and no two look alike.')}
  
  describe 'get views' do
    it 'loads the index page' do
      get :index
      expect(response.status).to eq(200)
      expect(assigns(:plant_types)).to_not be_nil
    end
    
    it 'loads the show page' do
      get :show, :id => pt.id
      expect(response.status).to eq(200)
      expect(assigns(:plant_type)).to_not be_nil
    end
  end
end
