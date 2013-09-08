require 'spec_helper'

describe LocationsController do
  let(:mylocation){ Location.create(:id => 10, :name => 'Canyons')}
  subject{ mylocation }
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show', :id => mylocation.id
      response.should be_success
    end
  end

end
