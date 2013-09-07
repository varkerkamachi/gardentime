require 'spec_helper'

describe Care do

  let(:care){ Care.new(plant_id: 1, sun: 10, sun_frequency: 'daily') }
  subject {care}

  it "is invalid without a plant_id" do
    care.plant_id = nil
    care.should_not be_valid
  end
  
  it { should respond_to(:sun_lover?) }
  it { should respond_to(:water_lover?) }
  it { should respond_to(:drought_tolerant?) }
  
end
