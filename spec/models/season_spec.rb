require 'spec_helper'

describe Season do
  it "is invalid without a name" do
    season = Season.new
    season.should_not be_valid
  end
  it "raises an error if saved without a name" do
      season = Season.new
      expect{season.save!}.to raise_error(
        ActiveRecord::RecordInvalid
      )
    end
  
end
