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
    it "loads the create page" do
      get :create
      expect(response.status).to eq(200)
    end
    it "loads the new page" do
      get :new
      response.should be_success
    end
  end

end
