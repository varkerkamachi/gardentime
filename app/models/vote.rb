class Vote < ActiveRecord::Base
  belongs_to :plant
  attr_accessible :vote, :plant_id

  validates_presence_of :plant_id
  validates_presence_of :vote
  validates_numericality_of :vote
  validates_inclusion_of :vote, in: 0...2, :message => "vote can only be a value of 1"
  
end
