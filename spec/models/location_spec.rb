require 'spec_helper'

describe Location do
  it "is invalid without a name" do
    location = Location.new
    location.should_not be_valid
  end
  
  it "is invalid if the name is too long" do
    location = Location.new
    subject.name = 'someridiculouslylongstringnameforlocation when it should be just indoors or outdoors'
    subject.should_not be_valid
  end
  
end
