require 'spec_helper'

describe Soil do
  let(:soil){ Soil.create }
  subject{ soil }
  
  it "is invalid without a name" do
    soil.should_not be_valid
  end
  
  it "should raise an error without a name" do
    expect{ soil.save! }.to raise_error(
      ActiveRecord::RecordInvalid
    )
  end
  
  it "should raise an error without a value for the scale" do
    soil.name = 'acidic'
    expect{ soil.save! }.to raise_error(
      ActiveRecord::RecordInvalid
    )
  end
  
  it "must have an integer for the scale" do
    soil.name = 'acidic'
    soil.scale = '2.4'
    soil.should_not be_valid
  end
end
