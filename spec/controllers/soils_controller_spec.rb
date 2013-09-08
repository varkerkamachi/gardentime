require 'spec_helper'

describe SoilsController do
  let(:mysoil){ Soil.create(:id => 8, :name => 'Red muck', :scale => 4) }
  subject{ mysoil }
  
  describe 'get views' do
    it 'loads the index page' do
      get :index
      expect(response.status).to eq(200)
      expect(assigns(:soils)).to_not be_nil
    end
    it 'loads the detail page' do
      get :show, :id => mysoil.id
      expect(response.status).to eq(200)
      response.should render_template('soils/show')
    end
  end
end
