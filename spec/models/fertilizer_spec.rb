require 'spec_helper'

describe Fertilizer do
  it "should be invalid without a name" do
    f = Fertilizer.new
    f.should_not be_valid
  end
end
