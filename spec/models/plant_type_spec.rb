require 'spec_helper'

describe PlantType do
  it "is invalid without a name" do
    type = PlantType.new
    type.should_not be_valid
  end  
end
