require 'spec_helper'

describe Gallery do
  let(:gallery){ Gallery.new(plant_id: 1, image1: 'myjpeg.jpeg', image2: 'anotherimage.png') }
  subject {gallery}
  
  it "is invalid without a plant_id" do
    gallery.plant_id = nil
    should_not be_valid
  end

  it "must have an integer for the plant_id" do
    gallery.plant_id = 'a'
    should_not be_valid
    gallery.plant_id = 24
    should be_valid
  end
  
end
