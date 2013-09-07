require 'spec_helper'

describe Plant do
  let(:plant) { Plant.new(name: 'wheatgrass', genus: 'phyllumus placas', plant_type_id: 2, caredifficulties_id: 0, gallery_id: 4, season_id: 3, location_id: 7, description: 'some description about this fascinating plant') }
  subject { plant }
  
  it{ should respond_to(:has_images?) }
  
  it "has associated images" do
    plant.has_images?.should == true
  end
  
  it "must have a name to be valid" do
    plant.name = nil
    plant.should_not be_valid
  end
end
