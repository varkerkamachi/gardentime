require 'spec_helper'

describe VotesController do
  let(:myvote){ Vote.new(:plant_id => 1, :vote => 1) }
  subject{ myvote }


  describe "GET views" do
    it "loads the index page" do
      get :index
      expect(response.status).to eq(200)
      expect(assigns( :votes)).to_not be_nil
    end
    it "loads the show page" do
      get 'show'
      response.should be_success
    end
    it "loads the create page" do
      get :create
      expect(response.status).to eq(200)
    end
    it "loads the new page" do
      get :new
      response.should be_success
    end
    it "loads the edit page" do
      get :edit
      response.should be_success
    end
    it "loads the update page" do
      get :update
      expect(response.status).to eq(200)
    end
    it "loads the destroy page" do
      get :destroy
      expect(response.status).to eq(200)
    end
  end

end
