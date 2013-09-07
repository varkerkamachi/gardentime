require 'spec_helper'

describe Caredifficulty do
  it "should be invalid without a level" do
    care = Caredifficulty.new
    care.should_not be_valid
  end
end
