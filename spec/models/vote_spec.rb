require 'spec_helper'

describe Vote do
  
  let(:avote) { Vote.new(plant_id: 2, vote: 1) }
  subject{ avote }
  
   it "is invalid without a vote number" do
     avote.vote = nil
     avote.should_not be_valid
   end
   it "is invalid without a plant id" do
     avote.plant_id = nil
     avote.should_not be_valid
   end
   it "must have an integer for a vote" do
     avote.vote = 'a#$'
     avote.should_not be_valid
   end
   it "should raise an error if saved without a vote or plant_id" do
     vote = Vote.new
     expect{vote.save!}.to raise_error(
     ActiveRecord::RecordInvalid
     )
   end
   it "will accept only a value of '1' for a vote" do
     avote.vote = 2
     avote.should_not be_valid
   end
   it "will raise an error if vote is greater or less than 1" do
     avote.vote = 2
     expect{avote.save!}.to raise_error(
      ActiveRecord::RecordInvalid, "Validation failed: Vote vote can only be a value of 1"
     )
   end
end
